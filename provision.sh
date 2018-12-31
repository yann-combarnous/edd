#!/usr/bin/env bash
sudo add-apt-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible git python-psutil
sudo mintupdate-cli upgrade -y
ansible-pull -U https://github.com/xunilog/edd.git -K provision.yml --clean --purge --full -C master