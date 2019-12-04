#!/bin/bash

#This file will allow the user to indicate which vm they would like to convert into the template. 
#It will then prepare a XML dump of this VM as well as perform the sysprep option on the VM. 

echo "Welcome to the Template Generator, please follow the prompts exactly or this script will not work."
echo "The purpose of this template is to convert a vm to be a template for other vm's. Please use the clone script to perform a clone or the thin script to perform a thin clone."

#This line displays available vm's to be templated. If command is followed by && it must complete successfully before the next is ran.
sudo virsh list --all &&

#Reads the user input to the prompt and stores it in a variable input. 
read -p 'Please enter only vm name: ' input &&

#Shutsdown the indicated vm in order to manipulate it.
sudo virsh shutdown --domain $input &&

#Turns off any autostart that feature may be enabled.
sudo virsh autostart --disable $input 

#Applies the standard of template to the vm.
sudo virsh domrename $input 'template-'$input &&

input=$'index-'$input

#Due to errors being thrown this causes the script to pause for 5 seconds to let the above commands be performed.
sleep 5 &&

#Verifies for the user that the vm has been changed and renamed.
sudo virsh list --all &&

#Performs the sysprep features removing 32 localization aspects from the vm.
sudo virt-sysprep -d $input  &&

#Creates a xml backup of the file in the xml project folder. Possible use in creating clones.
sudo virsh dumpxml --domain $input >> '../../xml/'$input'.xml' &&

#Confirms all action has been completed.
sudo virsh list --all 
