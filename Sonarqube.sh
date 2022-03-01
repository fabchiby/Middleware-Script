#!/bin/bash

# Author: Maxwell Achukwu

# Description: Installation of Sonarqube

# Date: March 2022

echo -e "\n Installation of Sonarqube on a Centos 7 \n"
sleep 2
echo -e "\n Ensure you are logged in as a User and not as a Root User before Installation.\n"
sleep 4
echo
sudo yum update -y
sleep 2
echo
sudo yum install java-11-openjdk-devel -y
sleep 2
echo
sudo yum install java-11-openjdk -y
sleep 2
echo
cd /opt
sleep 2
echo
sudo yum install wget -y
sleep 2
echo
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sleep 2
echo
sudo yum install unzip -y
sleep 2
echo
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sleep 2
echo
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
sleep 2
echo
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
sleep 2
echo
./sonar.sh start
sleep 2
echo
ip a
sleep 2
echo -e "\n Installation Complete, Please use the ip and port 9000 to log into the browser Thank you.\n"

