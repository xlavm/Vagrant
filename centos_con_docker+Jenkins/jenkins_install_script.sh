#!/bin/bash
# Usage: docker-install-script.sh
# Author: Luis Angel Vanegas
# Version: 1.0

docker pull jenkins/jenkins

docker run -p 9090:8080 jenkins/jenkins #forwarding del 8080 de jenkins a 9090 
#accedo desde localhost:9090/