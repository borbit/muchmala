# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  # config.vm.box_url = "http://files.vagrantup.com/precise64_vmware_fusion.box"

  config.vm.hostname = "muchmala.dev"
  config.vm.network :private_network, ip: "10.0.6.2"
  config.vm.synced_folder ".", "/opt/muchmala", :id => "vagrant-root", :nfs => true

  cpus = 2
  memory = ENV["MEMORY"] ? ENV["MEMORY"] : "1024"

  config.vm.provider :virtualbox do |vb|
    vb.gui = true if ENV["DEBUG"]
    vb.customize ["modifyvm", :id, "--memory", memory]
    vb.customize ["modifyvm", :id, "--cpus", cpus]
  end

  config.vm.provider :vmware_fusion do |v|
    v.gui = true if ENV["DEBUG"]
    v.vmx["memsize"] = memory
    v.vmx["numvcpus"] = cpus
  end
end
