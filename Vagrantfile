Vagrant.configure("2") do |config|

  config.vm.provision "shell", inline: <<-SHELL
     apt update -y
     apt upgrade -y
  SHELL
  
  config.vm.define "nomad-server-1" do |nomad-server-1|
    nomad-server-1.vm.box = "generic/ubuntu2004"
    nomad-server-1.vm.provider "libvirt" do |lv|
      lv.memory = 1024
	    lv.cpus = 1
	  end  
  end
  
  config.vm.define "nomad-server-2" do |nomad-server-2|
    nomad-server-1.vm.box = "generic/ubuntu2004"
    nomad-server-1.vm.provider "libvirt" do |lv|
      lv.memory = 1024
	    lv.cpus = 1
	  end  
  end

  config.vm.define "nomad-server-3" do |nomad-server-3|
    nomad-server-3.vm.box = "generic/ubuntu2004"
    nomad-server-3.vm.provider "libvirt" do |lv|
      lv.memory = 1024
	    lv.cpus = 1
	  end  
  end

  config.vm.define "nomad-client-1" do |nomad-client-1|
    nomad-client-1.vm.box = "generic/ubuntu2004"
    nomad-client-1.vm.provider "libvirt" do |lv|
      lv.memory = 2048
	    lv.cpus = 2
	  end  
  end

 config.vm.define "nomad-client-2" do |nomad-client-2|
    nomad-client-2.vm.box = "generic/ubuntu2004"
    nomad-client-2.vm.provider "libvirt" do |lv|
      lv.memory = 2048
	    lv.cpus = 2
	  end  
  end

 config.vm.define "nomad-client-3" do |nomad-client-3|
    nomad-client-3.vm.box = "generic/ubuntu2004"
    nomad-client-3.vm.provider "libvirt" do |lv|
      lv.memory = 2048
	    lv.cpus = 1
	  end  
  end
  
end
