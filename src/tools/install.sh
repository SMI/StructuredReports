#!/bin/bash

# Create the file repository configuration:
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
# Import the repository signing key:
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo apt-get update
sudo apt-get install ant curl openjdk-11-jdk subversion unzip vim git git-lfs apt-transport-https
sudo apt-get install python3 python3-pip python3-virtualenv python3-setuptools python3-dev python3-testresources
sudo apt-get install postgresql-13 mongodb libpq-dev

# To manually install postgres you need this:
# (Download from apt.postgresql.org/pub/repos/apt/pool)
#sudo apt install libjson-perl
#sudo dpkg -i libpq5_13.4-1.pgdg20.04+1_amd64.deb
#sudo dpkg -i pgdg-keyring_2018.2_all.deb
#sudo dpkg -i postgresql-client-common_226.pgdg20.04+1_all.deb
#sudo dpkg -i postgresql-common_226.pgdg20.04+1_all.deb
#sudo dpkg -i postgresql-client-13_13.4-1.pgdg20.04+1_amd64.deb
#sudo apt install libllvm9
#sudo dpkg -i postgresql-13_13.4-1.pgdg20.04+1_amd64.deb

# To install in CentOS
# sudo yum install epel-release
# sudo yum install centos-release-scl
# sudo yum install https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
# sudo yum install postgresql14-server postgresql14-devel

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

mkdir -p ~/SemEHR
cd ~/SemEHR
git clone https://github.com/SMI/StructuredReports
git clone https://github.com/SMI/CogStack-SemEHR
git clone https://github.com/SMI/nlp2phenome
git clone https://git.ecdf.ed.ac.uk/SMI/data.git

git clone https://github.com/SMI/SmiServices
cd SmiServices/src/common/Smi_Common_Python
pip3 install -r requirements.txt
python3 setup.py bdist_wheel
pip3 install dist/SmiServices*whl

python3 -m virtualenv -p /usr/bin/python3 --system-site-packages ~/SemEHR/virtenv
source ~/SemEHR/virtenv/bin/activate
pip3 install psycopg2-binary
pip3 install pymongo

# not needed: pip3 install -r ~/SemEHR/CogStack-SemEHR/requirements.txt
cd ~/SemEHR/CogStack-SemEHR/installation
echo ~/SemEHR/ | bash install_semehr.sh
sudo apt remove -y python2-dev

cd ~/SemEHR/data/CogStack-SemEHR
./install.sh

cd ~/SemEHR/structuredreports/src/tools
./mtsamples_ihi_extract.py
mv ~/SemEHR/structuredreports/src/data/mtsamples_ihi_docs/doc*  ~/SemEHR/data/input_docs

export SMI_LOGS_ROOT=.

./semehr_annotate.sh -i ~/SemEHR/data/input_docs
