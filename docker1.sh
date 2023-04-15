#!/bin/bash
# Created by Serge Guetsa sonkeng
# Date:14 april 2023
# Install docker in centos

# Update dans Remove any old versions
yum update docker -y
sudo yum remove docker docker-common docker-selinux docker-engine

# Install required packages
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Configure docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker-ce
sudo yum install docker-ce -y

# Start Docker
sudo systemctl start docker
sudo systemctl enable docker

#Thanks

~  
