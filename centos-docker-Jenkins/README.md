# Indications 

```bash
# access to file system of windows from wsl
export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH="/mnt/d"

#1. up machine
vagrant up

#2. enter the machine
vagrant ssh

# enter the machine with fordwarding for see jenkins from phisycal machine
ssh -i .vagrant\machines\jendocktos\virtualbox\private_key vagrant@127.0.0.1 -p 2222 -L 9090:localhost:9090

#3. create container from image jenkins
docker run -d --name jenkins -p <port-to-expose>:<port-of-jenkins> jenkins/jenkins
docker run -d --name jenkins -p 9090:8080 jenkins/jenkins
  
#4. open the browser in localhost:9090/ or <ip-machine>:9090/
```

