# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "rockylinux/8"
  config.vm.hostname = "ansiblelab"

  config.vm.provider :libvirt do |lv|
    lv.cpus = 2
    lv.memory = 2048
  end  
end
