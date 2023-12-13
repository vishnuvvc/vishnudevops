#!/usr/bin/bash
echo "apt repo update"
apt-get update
echo "jdk installation"
java --version
if [ "$?" -ne 0 ]
then
    echo "java not installed"
    sudo apt-get install openjdk-11-jdk -y
else
    echo "java already installed"
fi
mvn --version
if [ "$?" -ne 0 ]
then
    echo "Maven not installed"
    sudo apt-get install maven -y
else
    echo "maven aleready installed"
fi