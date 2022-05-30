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
end
