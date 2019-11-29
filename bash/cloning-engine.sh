#!/bin/bash

#This file prompts the user and should be designed to deploy any number of virtual machines. 
#Generating a staic IP address for them could be in this file or I may prompt to execute another script that edits their xml files directly to make sure that their ip's arell fall inn line. 

echo "This script will take a template and make a vm for it. Please follow the prompts to fill in the requirements for this cloner script."
read -p 'Please enter the name for the new Virtual Machien: ' name
sudo ls -la /var/lib/libvirt/images/
read -p 'Please declare the source template, include the extention' source
virt-install --connect qemu:///system \
--name $name --os-variant centos7.0 \
--network network=default --memory 2048 --vcpus 1 \
--disk pool=default,size=10,format=qcow2 --graphics=spice \ 
--location '/var/lib/libvirt/images/',$source \ 
--autostart --import

