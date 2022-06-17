#!/bin/bash

#Author: Faustin

#Date:

echo "1- Install Java"

sudo yum install java-1.8.0-openjdk-devel

echo "Step 2: Enable the Jenkins repository"

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

if [ $? -eq 0]

then

yum install wget -y

fi

echo "Disable key check on the repo"

sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo

echo "Step 3: Install the latest stable version of Jenkins"

sudo re have practice07'yum install jenkins

echo "we need to start the service "
sudo systemctl start jenkins

echo "Check the status of Jenskin"

sudo systemctl status jenkins

echo "Step 4: Adjust the firewall,we need to open the necessary port for Jenkins"

sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload