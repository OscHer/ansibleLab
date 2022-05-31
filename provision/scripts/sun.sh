#! /bin/bash


yum -y install epel-release # Ansible is not included in base Rocky repos
yum -y install ansible vim git
ansible --version # Check if ansible is installed. This will be shown in 'vagrant up' post message
rm -f /home/vagrant/.ssh/id_rsa* && echo "Deleting previous public/private keys."
#su -c 'ssh-keygen -q -t rsa -f ~/.ssh/id_rsa -b 2048 -N "" && echo "Creating new public/private keys.'
su -c 'rm -f /home/vagrant/.ssh/id_rsa* ; ssh-keygen -q -t rsa -f /home/vagrant/.ssh/id_rsa -b 2048 -N "" && echo "Generating new public/private key"'
