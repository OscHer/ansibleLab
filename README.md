# Ansible lab

## Overview
Main goal of this project is to create a quick 'n easy ansible lab for learning purposes.
Main component of this project is a Vagrantfile which creates a Controller node based in Rockylinux and a maged node based in Ubuntu.
Since we want a fully functional ansible environment, we won't use ansible provisioner in our Vagrantfile to reduce dependencies. All provisioning will be done from shell scripts and, after that, our environment will be ready to be self sustained from the Controller node (Sun).

## Dependencies
* Virtualbox or other virtualization system compatible with Vagrant
* Vagrant

## VMs
* Main node. This will be our ansible bastion.
* Mercury. First ansible managed node.

## Instructions
* git clone https://github.com/OscHer/ansibleLab.git
* cd ansibleLab
* vagrant up
* Enjoy
