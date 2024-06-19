#!/bin/bash

echo "installing java"
sudo yum install java -y

echo "Download the Jenkins repository configuration"
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

echo "Import the Jenkins GPG key"
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

echo "Update the package database"
sudo yum upgrade -y

echo "Install Jenkins"
sudo yum install jenkins -y

echo "Reload the systemd manager configuration"
sudo systemctl daemon-reload

echo "Enable the Jenkins service to start at boot"
sudo systemctl enable jenkins

echo "Start the Jenkins service"
sudo systemctl start jenkins

echo "Jenkins is running"
