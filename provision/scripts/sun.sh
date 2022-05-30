#! /bin/bash


yum -y install epel-release # Ansible is not included in base Rocky repos
yum -y install ansible vim git
ansible --version # Check if ansible is installed. This will be shown in 'vagrant up' post message
