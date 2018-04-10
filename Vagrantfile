
Vagrant.configure(2) do |config|

#  For Mac Dev use the Parallels version of Trusty64 otherwise use the ubuntu box.
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_version = "20170619.0.0"
#  config.vm.box = "parallels/ubuntu-14.04"
  config.vm.network "forwarded_port", guest: 3838, host: 8080
  config.vm.network "forwarded_port", guest: 3306, host: 3306

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
  end
  config.vm.provider "parallels" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.provision :shell, :path => "bootstrap.sh"
end
