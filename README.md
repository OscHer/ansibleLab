# Ansible lab

## Overview
Main goal of this project is to create a quick 'n easy ansible lab for learning purposes.
Main component of this project is a Vagrantfile which creates a Controller node based in Rockylinux and a managed node based in Ubuntu.
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

## Disclaimer

First functional version.

At the end of the "vagrant up" procedure you will have a fully functional ansible lab for learning goals.           
It consists in two nodes:
* Sun: controller node. RHEL 8
* Mercury: managed node. Ubuntu 21.04

Private keys have been deployed but, please, take into account that this project goal consists of CREATING ONLY infrastructure you'll need to start learning ansible; not in having everything done from scratch. You'll have to provide your own inventory, needed software besides ansible and ansible-playbook and whatever you'll think you'll need. That is:

NOW YOU'RE ON YOUR OWN.

## Thanks
Thanks to Esther Mora (https://www.linkedin.com/in/esthermoraoliver/) for bossing me around. You'll never know how useful a Project Manager is since you tend to procrastinate even in your own personal projects.

