# Vagrant

Contain instructions for the use of Vagrant

## Executing 

Execute de the commands:

```bash
git clone https://github.com/xlavm/Vagrant.git

cd Vagrant/centos-docker
``` 

And execute the command: `vagrant up`

for test the docker running, execute the command: `docker ps`

## Basics Commands

* Up the machine: `vagrant up`
* Enter the machine: `vagrant ssh <machineName>`
* down the machine: `vagrant halt <machineName>`
* delete the machine: `vagrant destroy <machineName>`
* status of machine: `vagrant status <machineName>`
* view all the machines: `vagrant box list`