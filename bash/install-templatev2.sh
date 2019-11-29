#!/bin/bash

#Install the Guest VM from a ISO in the default directory
echo 'This script is to install a centos virtual machine with Virt-Install to your desired specifications. It will require the internet in order to work.'
echo ' '
echo ' '
sudo virsh list --all
read -p 'Please choose a vm name, it may not be listed above: ' name 

sudo virt-install --connect qemu:///system --name $name --os-variant centos7.0 --network network=default --memory 2048 --vcpus 1 --disk pool=default,size=10,format=qcow2 --graphics=spice --location http://mirror.linux.duke.edu/pub/centos/7.7.1908/isos/x86_64/CentOS-7-x86_64-NetInstall-1908.iso --autostart


