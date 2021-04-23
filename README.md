# Vagrant

Contain instructions for the use of Vagrant

## Commands

* Up the machine: `vagrant up`
* Enter the machine: `vagrant ssh <machineName>`
* down the machine: `vagrant halt <machineName>`
* delete the machine: `vagrant destroy <machineName>`
* status of machine: `vagrant status <machineName>`
* view all the machines: `vagrant box list`
* View config of machines: `vagrant ssh-config`

## Executing 

1. Execute de the commands:
     ```bash
     $ git clone https://github.com/xlavm/Vagrant.git

     $ cd Vagrant/centos-docker
     ``` 
2. And execute the command: `vagrant up`
> Note: for test the docker running, execute the command: `docker ps`


## Port Local Forwarding

1. in the path of Vagrantfile, execute the command:
   ```bash
   ssh -i .vagrant\machines\centos\virtualbox\private_key vagrant@<ip_your_machine> -p <port_your_machine> -L <port_to_expose>:localhost:<port_to_expose>
   ```
> NOTE: you see the `ip_your_machine` and `port_your_machine` executing the command: `vagrant ssh-config` in the path of your Vagrantfile


## Virtual Machine Network

```bash
# Form 1
h.vm.network "private_network", ip: "192.168.1.101"
# Form 2 Bridge Mode
h.vm.network "public_network", ip: "192.168.1.100", bridge: "Intel(R) Wireless-AC 9560"
```
Examples:

Form  1
```bash
config.vm.define "cendock", primary: true do |h|
      h.vm.hostname = "cendock"
      h.vm.network "private_network", ip: "192.168.1.101"
      #install docker from shell
      h.vm.provision :shell, path: "docker_install_script.sh"
      h.vm.provider "virtualbox" do |vb|
        vb.memory = "4096"
      end
    end
```
Form 2 Bridge Mode
```bash
config.vm.define "centdockjens", primary: true do |h|
    h.vm.hostname = "centdockjens"
    h.vm.network "public_network", ip: "192.168.1.100", bridge: "Intel(R) Wireless-AC 9560"
    h.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
    end
  end
```


