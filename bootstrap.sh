#!/bin/bash

## Project-specific variables
## Be sure to change these to match the project you're working on!
export PROJECTNAME='project' # <= Django folder name


# Django environment variables
echo export DJANGO_SETTINGS_MODULE=$PROJECTNAME.settings.local >> /etc/environment
echo export OLD_PYTHONPATH="$PYTHONPATH" >> /etc/environment
echo export PYTHONPATH=$PYTHONPATH:/home/vagrant/app/$PROJECTNAME/ >> /etc/environment



# Variables for colour highlighting
textreset=$(tput sgr0)
red=$(tput setaf 1)
yellow=$(tput setaf 2)

# general package upgrades
echo "[provision] General distribution-based package upgrades."
apt-get update -y >/dev/null

echo "[provision] Installing Python, pip, and PIL dependencies."
apt-get install python-pip -y >/dev/null
apt-get build-dep python-psycopg2 -y >/dev/null
apt-get install git -y >/dev/null

# PIL dependencies
apt-get install libjpeg8 libpng12-0 libfreetype6 zlib1g -y >/dev/null
ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib
ln -s /usr/lib/x86_64-linux-gnu/libfreetype.so /usr/lib
ln -s /usr/lib/x86_64-linux-gnu/libz.so /usr/lib

# regen locales
echo "[provision] Generate Canadian locale for en_CA terminal setups."
locale-gen en_CA.UTF-8 >/dev/null
echo LC_ALL=\"en_CA.UTF-8\" >> /etc/environment

# pip install -r app/requirements.txt if it exists
FILE=/home/vagrant/app/requirements/local.txt
if [ -f $FILE ]
then
  echo "[provision] Running pip install."
  pip install -r $FILE
else
  echo "[warning] No app/requirements.txt found, could not run pip install."
fi
