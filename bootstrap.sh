#!/bin/bash

# Variables for colour highlighting
textreset=$(tput sgr0)
red=$(tput setaf 1)
yellow=$(tput setaf 2)

# general package upgrades
echo "[provision] General distribution-based package upgrades."
apt-get update -y >/dev/null

echo "[provision] Installing Python, pip, and Postgres dependencies."
apt-get install python-pip -y >/dev/null
sudo apt-get build-dep python-psycopg2 -y >/dev/null

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
