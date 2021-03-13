# Indications 

```bash
#1. up machine
vagrant up

#2. enter the machine
vagrant ssh

#3. create container from image jenkins
docker run -d --name jenkins -p <port-to-expose>:<port-of-jenkins> jenkins/jenkins
docker run -d --name jenkins -p 9090:8080 jenkins/jenkins
  
#4. open the browser in localhost:9090/ or <ip-machine>:9090/
```
