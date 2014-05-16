Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http:/files.vagrantup.com/precise32.box"
  config.vm.network :private_network, ip: "33.33.33.33"
  #config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048]
  end
  

end