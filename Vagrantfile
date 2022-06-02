# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Master node configuration: sun
  config.vm.define "sun" do |sun|
    sun.vm.box = "rockylinux/8"
    sun.vm.hostname = "sun"
    
    # Virtual hardware configuration
    sun.vm.provider :libvirt do |lv|
      lv.memory = 2048
      lv.cpus = 2
    end

    # Shell provision script
    sun.vm.provision "shell", path: "provision/scripts/sun.sh" 
  end

  # Mercury. First managed node
  config.vm.define "mercury" do |mercury|
    mercury.vm.box = "generic/ubuntu2104"
    mercury.vm.hostname = "mercury"

  # Shell provision script
    mercury.vm.provision "shell", path: "provision/scripts/mercury.sh"   
  end

  # Post-Install script
  config.vm.define "sun" do |sun|
    sun.vm.provision "shell", path: "provision/scripts/sshkeys.sh" 
    sun.vm.provision "shell", path: "provision/scripts/ansible-check.sh" 
  end 

  # Ansible provisioning
  # We don't actually need this, but defining it we can retrieve
  # vagrant auto-generted inventory
  config.vm.define "sun" do |controller|
    controller.vm.provision :ansible_local do |ansible|
      ansible.playbook = "provision/ansible/main.yml"
      ansible.verbose = true
      ansible.limit = "all"
    end
  end
end
