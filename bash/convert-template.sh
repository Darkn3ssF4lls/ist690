#!/bin/bash

#This file will allow the user to indicate which vm they would like to convert into the template. 
#It will than prepare a XML dump of this VM as well as perform the sysprep option on the VM. 

echo "Welcome to the Template Generator, please follow the prompts exactly or this script will not work."
echo "The purpose of this template is to convert a vm to be a template for other vm's. Please use the clone script to perform a clone or the thin script to perform a thin clone."

virsh -c qemu:///system

#
virsh list --all

#
read -p 'Please enter only vm name: ' input

#
virsh shutdown $input 

#
virsh autostart --disable $input

#
virsh list --all

#
virt-sysprep -d $input --verbose

#
virsh dumpxml --domain $input >> $input,'.xml'

#
virsh destroy --domain $input

#
virsh undefine --domain $input

#
virsh list --all
