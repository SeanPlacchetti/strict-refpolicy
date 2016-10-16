$script = <<SCRIPT
echo I am provisioning...
date > /etc/vagrant_provisioned_at
SCRIPT

Vagrant.configure(2) do |config|
   config.vm.box = "precise64"
   config.vm.box_url = "http://files.vagrantup.com/precise64.box"
   config.vm.host_name = "dev64.example.com"
   config.vm.provider :virtualbox do |prov|
     prov.customize ['modifyvm', :id,'--memory', '512']
   end
   config.vm.network "forwarded_port", guest: 80, host: 8081
   config.vm.provision "shell", inline: $script
end
