#!/bin/bash

#This file prompts the user and should be designed to deploy any number of virtual machines. 
#Generating a staic IP address for them could be in this file or I may prompt to execute another script that edits their xml files directly to make sure that their ip's arell fall inn line. 

sudo virsh list --all &&
read -p 'Please choose your template from above: (only template-) ' template
read -p 'Please enter one name for all your clones: ' clonename &&
read -p 'Please enter how many clones to make: ' clones &&
instance=1 &&

while [ $instance -le $clones ] 
do 
sudo virt-clone --original $template --name $clonename$instance --file '/var/lib/libvirt/images/'$clonename$instance'.qcow2' --auto-clone
let instance++
done
