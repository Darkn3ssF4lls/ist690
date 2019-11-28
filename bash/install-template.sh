#!/bin/bash

#Install the Guest VM from a ISO in the default directory
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



