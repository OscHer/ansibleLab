# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "sun" do |sun|
    sun.vm.box = "rockylinux/8"
    sun.vm.hostname = "sun"

    sun.vm.provider :libvirt do |lv|
      lv.memory = 2048
    end
  end
end
