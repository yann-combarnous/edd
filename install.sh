apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get install -y ansible git python-psutil
ansible-pull --ask-vault-pass -U https://github.com/xunilog/edd.git linux.yml