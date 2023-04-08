# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # General configuration
  config.vm.box = "geerlingguy/centos7"

  config.ssh.insert_key = false

  config.vm.synced_folder '.', '/vagrant', disabled: true

  config.vm.provider :virtualbox do |v|
      v.memory = 256
      v.linked_clone = true
  end

  # VMC config
  config.vm.define "app1" do |app|
    app.vm.hostname = 'orc-app1.test.org'
    app.vm.network :private_network, ip: "192.168.60.4"
  end

  config.vm.define "db" do |db|
    db.vm.hostname = 'orc-db.test.org'
    db.vm.network :private_network, ip: "192.168.60.5"
  end
  

  # config.vm.provision "ansible" do |ansible|
  #     ansible.playbook = "playbook.yml"
  # end
end