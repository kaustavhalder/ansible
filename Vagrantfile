# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    # General configuration
    config.vm.box = "generic/centos7"
    config.ssh.insert_key = false

    config.vm.synced_folder ".", "/vagrant", disabled: true

    config.vm.provider :virtualbox do |v|
        v.memory = 256
        v.linked_clone = true
    end

    # VM configuration
    config.vm.define "app1" do |app|
        app.vm.hostname = "app1-appl.test"
        app.vm.network :private_network,ip: "192.168.60.12"
    end

    # VM2 config
    config.vm.define "app2" do |app|
        app.vm.hostname = "app2-appl.test"
        app.vm.network :private_network,ip: "192.168.60.13"
    end

    # config.vm.provision "ansible" do |ansible|
    #     ansible.playbook = "playbook.yml"
    # end
end