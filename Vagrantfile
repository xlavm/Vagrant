# -*- mode: ruby -*-
# vi: set ft=ruby :


# Getting Started:
# 1. vagrant plugin install vagrant-hostmanager #instalamos el plugin
# 2. vagrant up #levantamos la máquina (se hace desde la ruta donde está Vagrantfile)
# 3. vagrant ssh #para acceder a la máquina levantada
#

#PLUGUINS

#unless Vagrant.has_plugin?("vagrant-vbguest")
  #puts 'Installing vagrant-vbguest Plugin...'
  #system('vagrant plugin install vagrant-vbguest')
#end

unless Vagrant.has_plugin?("vagrant-hostmanager")
    puts 'Installing vagrant-hostmanager Plugin...'
    system('vagrant plugin install vagrant-hostmanager')
end

#MAQUINAS

  Vagrant.configure(2) do |config|
    config.hostmanager.enabled = true
  
    config.vm.box = "centos/7"
  
    config.vm.define "MiMaquina1", primary: true do |h|
      h.vm.hostname = "MiMaquina1"
      h.vm.network "private_network", ip: "192.168.1.100"
      # dar instrucciones de instalación de docker desde shell
      # h.vm.provision :shell, path: "docker_install_script.sh"
      h.vm.provider "virtualbox" do |vb|
        vb.memory = "4096"
      end

      #si quiero crear otra machine al tiempo, puedo añadir otra config así:

      
      #config.vm.define "MiMaquina2", primary: true do |h|
      #  h.vm.hostname = "MiMaquina2"
      #  h.vm.network "private_network", ip: "192.168.56.101"
      # # dar instrucciones de instalación de docker desde shell
      #  # h.vm.provision :shell, path: "docker_install_script.sh"
      #  h.vm.provider "virtualbox" do |vb|
      #    vb.memory = "2048" #le pongo 2GB de memoria RAM
      #  end

    end
  end
  
