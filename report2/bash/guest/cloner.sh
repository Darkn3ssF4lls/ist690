#!/bin/bash

#This file prompts the user and should be designed to deploy any number of virtual machines. 
#Generating a staic IP address for them could be in this file or I may prompt to execute another script that edits their xml files directly to make sure that their ip's arell fall inn line. 

#lists all the domains on the hypervisor
sudo virsh list --all && 
#Asks the user what vm to use as a template, must be a template to work, no error checking though. 
read -p 'Please choose your template from above: (only template-) ' template 
#Asks user what the name of their clones will be. This will be used on all clones. 
read -p 'Please enter one name for all your clones: ' clonename &&
#Asks the user how many clones to make, this does not check for storage pool capacity. 
read -p 'Please enter how many clones to make: ' clones &&
#This tells the below while loop to start at 1 not 0 as default. 
instance=1 &&

#virt-clone: This is the libvirt tool used to clone as is from templates. 
#orginal: This is the attribute of virt-clone that indicates the source vm template to make a copy of. 
#name: This is the name that the clone will take on.
#file: This is the title of the storage file for the new VM. 
#auto-clone: This performs the clone automatically. It can be replaced with another option that allows you to define the process. 

while [ $instance -le $clones ] 
do 
sudo virt-clone --original $template --name $clonename$instance --file '/var/lib/libvirt/images/'$clonename$instance'.qcow2' --auto-clone
sleep 5
#this line turns on the new vm.
sudo virsh start $clonename$instance
#this line tells the new vm to start with the hypervisor. 
sudo virsh autostart $clonename$instance
#this line increases the instance value by one. 
let instance++
done
#This shows the user the work is completed.
sudo virsh list --all
