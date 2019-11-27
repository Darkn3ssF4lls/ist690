#!/bin/bash

#This file will allow the user to indicate which vm they would like to convert into the template. 
#It will than prepare a XML dump of this VM as well as perform the sysprep option on the VM. 

echo "Welcome to the Template Generator, please follow the prompts exactly or this script will not work."
echo "The purpose of this template is to convert a vm to be a template for other vm's. Please use the clone script to perform a clone or the thin script to perform a thin clone."

#
sudo virsh list --all

#
read -p 'Please enter only vm name: ' input

#
sudo virsh shutdown $input 

#
sudo virsh autostart --disable $input

#
sudo virsh list --all

#
sudo virt-sysprep -d $input --verbose

#
sudo virsh dumpxml --domain $input >> $input,'.xml'

#
sudo virsh destroy --domain $input

#
sudo virsh undefine --domain $input

#
sudo virsh list --all
