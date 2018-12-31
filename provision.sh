#!/usr/bin/env bash

# Install Ansible latest version (tested with 2.7)
sudo add-apt-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible git python-psutil

# Upgrade all system packages
sudo mintupdate-cli upgrade -y

# Run Ansible provisioning playbook
ansible-pull -U https://github.com/xunilog/edd.git -K provision.yml --clean --purge --full -C master