#!/bin/bash

# Variables for colour highlighting
textreset=$(tput sgr0)
red=$(tput setaf 1)
yellow=$(tput setaf 2)

# general package upgrades
echo "[provision] General distribution-based package upgrades."
# apt-get update -y
# apt-get upgrade -y

# regen locales
echo "[provision] Generate Canadian locale for en_CA terminal setups."
locale-gen en_CA.UTF-8
echo LC_ALL=\"en_CA.UTF-8\" >> /etc/environment
