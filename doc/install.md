# Installation on CentOS-7

## Update the OS

```
sudo dnf update
sudo yum update
sudo yum upgrade
sudo yum autoremove
sudo yum install -y yum-utils
```

## Install dotnet

```
sudo rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
sudo yum install dotnet-sdk-6.0
```

## Install docker

```
sudo yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo vi /etc/group # added smi-admin to the docker group
sudo systemctl start docker
```

## Install firefox

```
sudo yum install firefox xorg-x11-xauth
```

## Install python3 and compiler etc

```
sudo yum group install "Development Tools"
sudo yum install python-virtualenv python3 python3-devel re2-devel jq
```

# Install postgresql-14

```
sudo yum install epel-release centos-release-scl
sudo yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
sudo yum install postgresql14-server postgresql14-devel
```

## Install dcmtk (only need dcm2json)

```
wget https://dicom.offis.de/download/dcmtk/dcmtk367/bin/dcmtk-3.6.7-linux-debian-11-x86_64-static.tar.bz2 &
tar xf dcmtk-3.6.7-linux-debian-11-x86_64-static.tar.bz2
cd dcmtk-3.6.7-linux-debian-11-x86_64-static
sudo mv etc/dcmtk /usr/local/etc/
sudo mv share/dcmtk/ /usr/local/share/
sudo mv bin/* /usr/local/bin
sudo mkdir /usr/local/share/doc
sudo mv share/doc/dcmtk/ /usr/local/share/doc/
sudo mv share/man/man1/* /usr/local/share/man/man1/
```

## Download our source code

```
mkdir src
cd src
git clone https://github.com/SMI/SmiServices
git clone https://github.com/SMI/IsIdentifiable
git clone https://git.ecdf.ed.ac.uk/SMI/monitoring.git
git clone https://github.com/SMI/dicompixelanon
git clone https://github.com/SMI/StructuredReports
git clone https://github.com/SMI/nlp2phenome
git clone https://git.ecdf.ed.ac.uk/SMI/service-docs.git
git clone https://git.ecdf.ed.ac.uk/SMI/metacat.git
git clone https://github.com/SMI/CogStack-SemEHR
```

## Install SemEHR annotation database via Docker

```
sudo docker pull howff/annotation_server_password_https
```

## Create directories for data and logs

```
sudo mkdir -p /study_data/PACS
sudo mkdir -p /study_data/logs
sudo chgrp smi-admin /study_data/*
sudo chmod g+w /study_data/*
```

## Install SemEHR into /opt/semehr

```
sudo mkdir /opt/semehr
sudo chgrp smi-admin /opt/semehr
sudo chmod g+w /opt/semehr/
ln -s ~/src/CogStack-SemEHR /opt/semehr/CogStack-SemEHR
```

## Python virtual environment

```
virtualenv -p /usr/bin/python3 ~/venv
source ~/venv/bin/activate
pip install --upgrade pip
```

## Install SmiServices and dependencies

```
cd ~/src/SmiServices/src/common/Smi_Common_Python
pip install -r requirements.txt
pip install -r requirements-dev.txt
python3 setup.py install
```

## Other requirements depend on SmiServices

```
pip install -r src/structuredreports/src/tools/requirements.txt
```

## Environment

Do this every time you login:

```
export PATH=${PATH}:~/src/SmiServices/src/applications/SRAnonTool
export PATH=${PATH}:~/src/structuredreports/src/tools
export SMI_ROOT=~/src/SmiServices
export PACS_ROOT=/study_data/PACS
export SMI_LOGS_ROOT=/study_data/logs
```

# Testing

See the testing.md document.
