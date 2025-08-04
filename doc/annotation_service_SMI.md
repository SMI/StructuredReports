# Annotation Service installation in SMI

The database host is `smi-edris-db01` and the web service host is `smi-webs01`

# Database

The database host is configured using ansible
https://git.ecdf.ed.ac.uk/SMI/deploy/-/blob/main/playbooks/postgres.yml

The service will need a database called `semehr`.

The roles (groups and logins) are specific to this host and are configured by ansible
https://git.ecdf.ed.ac.uk/SMI/deploy/-/blob/main/inventories/nsh/host_vars/smi-edris-db01.nsh.loc/db_config.yml
The admin role is `semehr` and the read-only role is `semehr-api` (note the dash).

The rest of the database configuration is done manually, see `postgres_init_01.sh`

The database is populated by editing the postgres password in `semehr_to_postgres.py`
and running `semehr_zip_to_postgres.sh` with the zip files stored in `/mnt/beegfs/sr-nlp/annotations/complete_set_2`

# Web service

Create the container using the `docker/Dockerfile2`:
```
docker build -t howff/semehr:2 -f Dockerfile2 --build-arg GIT_DATE=$(date +%N) --progress=plain .
```

Import the container to `smi-webs01` as the `agans-smi` user:
```
ces-pull USER USERKEY ghcr.io/howff/semehr:2
podman images
```

Create/edit the configuration file, containing the postgres password for the `semehr-api` user
in this file `/localhome/agans-smi/src/smi/CogStack-SemEHR/docker/settings.json`

```
{
  "mappings": [
  ],
  "mappings_dir": "./mappings_dir",
  "transaction_dir": "./transactions",
  "training_dir": "./training",
  "passphrase": "^dr,rjt^",
  "webdata_path": "/Users/honghan.wu/Documents/working/SemEHR-Working/working_dermatology",
  "MRREL_path": "../umls/MRREL.csv",
  "MRCONSO_path": "../umls/MRCONSO.csv",
  "databaseBackend": "postgreSQL",
  "postgreSQL": {
    "host": "smi-edris-db01.nsh.loc",
    "port": 5432,
    "user": "semehr-api",
    "password": "***EDIT THIS***",
    "db": "semehr",
    "schema": "semehr",
    "ann_collection": "semehr_results",
    "text_collection": "text_collection",
  }
}
```

Test running the service:

```
podman run --replace --rm -d --name smi-semehr \
 -p 8485:8485 \
 -v ~/src/smi/CogStack-SemEHR/docker/settings.json:/CogStack-SemEHR/RESTful_service/conf/settings.json \
 ghcr.io/howff/semehr:2
```

Create the user-level systemd unit file `.config/systemd/user/container-smi-rgo.service`

```
[Unit]
Description=SMI Researcher Generated Outputs Service
Documentation=man:podman-generate-systemd(1)
Wants=network-online.target
After=network-online.target
RequiresMountsFor=%t/containers

[Service]
Environment=PODMAN_SYSTEMD_UNIT=%n
Restart=on-failure
ExecStart=/usr/bin/podman run \
    --cidfile=%t/%n.ctr-id \
    --cgroups=no-conmon \
    --sdnotify=conmon \
    --pull=never \
    --replace \
    --rm \
    -d \
    -p 8485:8485 \
    --name smi-semehr \
    -v /localhome/agans-smi/src/smi/CogStack-SemEHR/docker/settings.json:/CogStack-SemEHR/RESTful_service/conf/settings.json \
    ghcr.io/howff/semehr:2
ExecStop=/usr/bin/podman stop \
    --ignore \
    -t 10 \
    --cidfile=%t/%n.ctr-id
ExecStopPost=/usr/bin/podman rm \
    -f \
    --ignore \
    --cidfile=%t/%n.ctr-id
Type=notify
NotifyAccess=all

[Install]
WantedBy=default.target
```
