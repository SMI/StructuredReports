# Annotation Service

The Annotation Service is designed to maintain a catalogue of phenotypes derived from
medical reports and provide search access via a REST API. It consists of:

- software to anonymise the reports in the Identifiable Zone
- software to perform the annotation of the reports in the Identifiable Zone
- a PPZ (Private Project Zone) in the NSH (National Safe Haven) to host the service
- a VM (Virtual Machine) in the PPZ
- a PostgreSQL database in the VM
- a nginx proxy to perform HTTPS SSL decoding
- a systemd service to run the REST API server
- the REST API server software
- a network interface exposed (only) to the eDRIS Research Coordinator VM

# PPZ and VM

A PPZ has been provisioned which is an isolated network subnet with a web proxy
server to allow limited outbound internet access for downloading OS updates.

A VM called nsh-smi06 has been created inside the PPZ, with the internal
IP address 192.168.63.18. It has ntpserver 10.0.50.248 and proxyserver 10.0.50.246.

Previously the VM was accessible from the RC VM via a proxy, so the RC would
communicate with 10.0.2.135 port 8485 which would appear to the server as
coming from 10.0.50.108. This intermediate is no longer present in NSH v2.

The RC can communicate with the server using hostname 192.168.63.18 port 8485.
The server will see traffic coming from 10.60.65.164, the RC VM. Thus nsh-smi06
needs to have its firewall open to port 8485 coming from 10.60.65.164.

Internet access from within the PPZ is available through a proxy on port 800
but it requires authentication. It only operates during working hours, and
only allows access to the Ubuntu APT repository for OS updates, and to pypi.org
for Python packages.

The VM is accessible from the Identifiable Zone via SSH (port 22), and also
port 5432 (PostgreSQL for the purposes of populating the annotation database.
It is possible for an administrator to introduce the annotation server software
to the VM with this route.

# Installation

## Install the OS

This assumes the proxy has been configured in `/etc/apt/apt.conf.d/proxy.conf`

```
sudo apt-get update
sudo apt-get upgrade
sudo apt install curl git subversion unzip vim build-essential
sudo apt install python3-virtualenv python3-pip python3-setuptools python3-testresources python3-dev
sudo apt-get install openjdk-11-jdk ant
```

## Install the database servers

If you want mongodb then:

```
sudo apt-get install mongodb
```

Install postgres by downloading from `apt.postgresql.org/pub/repos/apt/pool`

```
libpq5_14.1-2.pgdg20.04+1_amd64.deb
libpq-dev_14.1-2.pgdg20.04+1_amd64.deb
pgdg-keyring_2018.2_all.deb
postgresql-14_14.1-2.pgdg20.04+1_amd64.deb
postgresql-client-14_14.1-2.pgdg20.04+1_amd64.deb
postgresql-client-common_234.pgdg20.04+1_all.deb
postgresql-common_234.pgdg20.04+1_all.deb
postgresql-contrib_14+234.pgdg20.04+1_all.deb
postgresql-server-dev-14_14.1-2.pgdg20.04+1_amd64.deb
```

Then install (must be done in a specific order):

```
sudo apt install libjson-perl libllvm9
sudo dpkg -i libpq5_14.1-2.pgdg20.04+1_amd64.deb
sudo dpkg -i pgdg-keyring_2018.2_all.deb
sudo dpkg -i postgresql-client-common_234.pgdg20.04+1_all.deb
sudo dpkg -i postgresql-common_234.pgdg20.04+1_all.deb
sudo dpkg -i postgresql-client-14_14.1-2.pgdg20.04+1_amd64.deb
sudo dpkg -i postgresql-14_14.1-2.pgdg20.04+1_amd64.deb
maybe sudo dpkg -i postgresql-server-dev-14_14.1-2.pgdg20.04+1_amd64.deb
```

Edit `/etc/postgresql/14/main/postgresql.conf` to put `/study_data` prefix in `data_directory`

```
sudo systemctl enable postgresql
sudo systemctl start postgresql
```

## Configure proxy

Put this into a `proxy.env` file:

```
proxy_user=abrooks
proxy_pass="ask andrew for this"
proxy_host=proxyserver # 10.0.50.246
proxy_port=800
proxy_str="http://${proxy_user}:${proxy_pass}@${proxy_host}:${proxy_port}"
http_proxy="${proxy_str}"
https_proxy="${proxy_str}"
ftp_proxy="${proxy_str}"
no_proxy=localhost,127.0.0.1,192.168.63.18,10.0.2.135
HTTP_PROXY="${proxy_str}"
HTTPS_PROXY="${proxy_str}"
FTP_PROXY="${proxy_str}"
NO_PROXY=localhost,127.0.0.1,192.168.63.18,10.0.2.135
export http_proxy https_proxy ftp_proxy no_proxy
export HTTP_PROXY HTTPS_PROXY FTP_PROXY NO_PROXY
```

## Configure nginx

This will listen for HTTPS SSL on port 8485 and pass requests onto port 8080.

First create certificate with

```
sudo openssl req -x509 -nodes -days 7300 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt \
  subj "/C=GB/ST=Scotland/L=Edinburgh/O=The University of Edinburgh/OU=EPCC/CN=10.0.2.135"
```

Don't answer 192.168.63.18 for Common Name because externally the address is 10.0.2.135

Create `/etc/nginx/sites-enabled/semehr`

```
server {
    listen 8485 ssl http2; # HTTP/2 is only possible when using SSL
    server_name localhost;
    ssl_certificate /etc/ssl/certs/nginx.crt;
    ssl_certificate_key /etc/ssl/private/nginx.key;
    client_max_body_size 100M;
    location / {
        proxy_pass http://127.0.0.1:8080/;
        proxy_set_header X-Forwarded-For $remote_addr;
        proxy_set_header Host $host;
        proxy_send_timeout 6000s; # 100 minutes
        proxy_read_timeout 6000s; # 100 minutes
        #proxy_next_upstream_timeout 0; # no timeout
        #keepalive_timeout 6000s; # probably not useful >75s
    }
}
```

See the docs at `https://nginx.org/en/docs/http/ngx_http_core_module.html`

## Configure firewall

Allow only ssh, rdp, postgresql and the API port:

```
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw allow 3389
ufw allow proto tcp from 10.0.50.0/24 to any port 5432
ufw allow proto tcp from 10.0.50.108/32 to any port 8485
ufw enable
```

## Install our software

Create a `semehr` user (and group) and install into `/opt/semehr`, create a python virtual environment:

```
sudo groupadd -g 8485 semehr
sudo useradd -g semehr -s /bin/false -u 8485 semehr
sudo mkdir /opt/semehr
sudo chown semehr:semehr /opt/semehr
sudo -u semehr virtualenv /opt/semehr/venv
```

Unpack the three repos into `~/src` so you have `~/src/SmiServices` and `~/src/StructuredReports` and `~/src/CogStack-SemEHR` (ensure you are using the correct branch in each one).

Create the SmiServices wheel

```
cd ~/src/SmiServices/src/common/Smi_Common_Python
python3 ./setup.py bdist_wheel
# creates dist/SmiServices-0.0.0-py3-none-any.whl
```

Now install packages into the virtualenv (only do this during working hours when the proxy is operational).
As the `semehr` user you need to source the proxy env vars, actuvate the environment, pip install.
You might need to be in a root shell to run these:

```
sudo -u semehr bash -c "(source proxy.env; source /opt/semehr/venv/bin/activate ; pip install ~/src/SmiServices/src/common/Smi_Common_Python/dist/SmiServices-*-py3-none-any.whl)"
sudo -u semehr bash -c "(source proxy.env; source /opt/semehr/venv/bin/activate ; pip install -r ~/src/StructuredReports/src/tools/requirements.txt)"
```

Now copy the rest of the software

```
sudo rsync -a ~/src/CogStack-SemEHR /opt/semehr/
sudo ln -s ../utils.py /opt/semehr/CogStack-SemEHR/RESTful_service/utils.py
sudo chown -R semehr:semehr /opt/semehr
```

## Create service for semehr

Create the systemd file `/etc/systemd/system/semehr.service`

```
[Unit]
Description=SemEHR Annotation Server

[Service]
Type=simple
WorkingDirectory=/opt/semehr/CogStack-SemEHR/RESTful_service
ExecStart=/home/abrooks/venv/bin/python3 webserver.py -p 8080
TimeoutStopSec=1
Restart=always
RestartSec=2
StartLimitInterval=0
User=semehr
Group=semehr

[Install]
WantedBy=multi-user.target
```

Start with

```
systemctl enable semehr.service
systemctl start semehr.service
systemctl status semehr.service
journalctl -u semehr.service --since=today
```

## Populate the databases

See the other documents.

# Test

Create a virtual network interface, because the external IP address is not available locally:

```
sudo ip link add eth10 type dummy
sudo ip addr add 10.0.2.135/32 brd + dev eth10 label eth10:0
# can be removed with:
# sudo ip addr del 10.0.2.135/32 brd + dev eth10 label eth10:0
# sudo ip link delete eth10 type dummy
```

Test the web page responds, using HTTPS on port 8485 to the external IP address:

```
curl -k https://10.0.2.135:8485/vis/
```

Test the password:

```
curl -k https://10.0.2.135:8485/api/check_phrase/ENCRYPTED_PASSWORD/
```

Using the correct encrypted password it should respond with `true` only.
To get the encrypted version of the password you need to use sha256:

```
printf "PASSWORD" | sha256sum | awk '{print$1}'
```

To test the security you should also verify:

- there is no response on any other port (on the external IP address), eg. 80, 8080, etc
- there is no response on port 8485 (on the external IP address) from any other VM than the RC VM
- ensure that a password is required
- ensure that only the valid password can be used, others are rejected

Note on security

# Populate the database with the annotations

This is described in the [annotation database](annotation_database.md) document.

# Using the REST API

See the [annotation API](annotation_service_API.md) document.

# Upgrade the software

The OS and PostgreSQL should be updated regularly, at least monthly, for security.
If possible the network routes and firewalls should also be tested at the same time.

To upgrade the web server software copy the `CogStack-SemEHR` repo into `/opt/semehr`.
First stop the server `systemctl stop semehr`, make a backup of the current software,
install the new software, and restart the server `systemctl start semehr`. Check file
ownership (should be `semehr`).

Be careful not to remove any of the ancillary files, especially
`/opt/semehr/CogStack-SemEHR/umls/*.csv`

If your copy of /opt/semehr/CogStack-SemEHR is directly cloned from git then you can
just do a `git pull` through the proxy to update it.

Restart the server after updating the software.

# Usage

The web page is accessible only to the Research Coordinator VM using
`https://10.0.2.135:8485/vis/...`

A password should be required.

The REST API is accessible only to the Research Coordinator VM using
`https://10.0.2.135:8485/api/...`

# Troubleshooting

Use the program from the tools directory `src/tools/semehr_service_check.sh`

If the web service cannot be reached:

- check that nginx is running `systemcal status nginx`. If it's not then check the logs `journalctl -u nginx`. It may be unable to start if the virtual IP address is not available.
- check the virtual IP address is available `ifconfig -a`, look for 10.0.2.135. If not available then create it (see above) and then `systemctl restart nginx`.
- check the web service is running `systemctl status semehr`. If it's not then check the logs `journalctl -u semehr`.
- If the web service process is running but not responding then check that postgres is running `systemctl status postgresql` because each request to the web service makes a connection to the database.

# Internal structure of web service

For details of how to use the web service API see
the [annotation service](annotation_service.md) document.
This section describes the internal structure of the code.

## HTML interface

The main search page is vis.html. This is a standalone client-side search interface.
There is no state maintained in the web server, it is all held in the client.

vis.html has external requirements: `jquery.min.js`, `jquery.dataTables.js`, `jquery.dataTables.css` and three images.

The API URL is hard-coded in `api.js` for example (`service_url: "http://localhost:8000/api"`).

## Javascript interface

vis.js makes these calls to the API:

```
qbb.inf.needPassphrase() -- calls /api/need_passphrase
qbb.inf.checkPhrase(phrase)  -- calls /api/check_phrase
qbb.inf.getMappings() -- calls /api/mappings
qbb.inf.getDocList() -- calls /api/docs
qbb.inf.getDocDetail(_curDoc) -- calls /api/doc_detail
qbb.inf.getDocDetailMapping(_curDoc, _curMapping)  -- calls /api/doc_content_mapping
qbb.inf.searchDocs($('#klsearch').val())  -- calls /api/search_docs
qbb.inf.searchAnnsMapping($('#klsearch').val(), _curMapping)  -- calls /api/search_anns_by_mapping
qbb.inf.searchAnns($('#klsearch').val())  -- calls /api/search_anns
```

## Python interface

The main class is called `DocAnn` which provides methods such as

- load_mappings
- get_doc_ann_by_mapping
- get_available_mappings
- do_search_anns

That class is subclassed as `PostgresDocAnn` specifically to use a PostgreSQL
database. Other subclasses are not fully featured, `FileBasedDocAnn` and
`MongoDocAnn`.

## Mappings

The query interface allows for sets of CUIs to be collected into a "mapping".
A mapping is a dictionary, stored in a JSON file, typically like this:

```
{
    "phenotypeName": [ "cui1", "cui2", ... ],
```

This is similar to the mapping used by nlp2phenome, see the
[annotation learning](annotation_learning.md) document and in fact
the same could be used: `cui1\tPref\tSty` (Pref and Sty are not
used in this context).

The query service is configured with a list of such mapping files
that it loads on startup.
