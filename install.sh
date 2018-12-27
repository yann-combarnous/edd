sudo add-apt-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible git python-psutil
ansible-pull -U https://github.com/xunilog/edd.git -K -f linux.yml