#!/bin/bash

#Install the Guest VM from a ISO in the default directory
echo 'This script is to install a centos virtual machine with Virt-Install to your desired specifications. It will require the internet in order to work.'
echo ' '
echo ' '
sudo virsh list --all
read -p 'Please choose a vm name, it may not be listed above: ' name 
read -p 'Please choose ram in MIB: (2048 recommended) ' ram
read -p 'Please choose how many vcpus: (1 recommended) ' vcpu
read -p 'Please choose how big of storage in gb: (10 recommended[int only]) ' storage
#virt-install: This is the libvirt tool that installs a virtual machine from scratch.
#connect: This indicates where to perform this work. In this case we are doing it on a local host but you could be using a remove hypervisor. 
#name: This will be the name that shows up as the domain for this vm. 
#os-variant: This field is required to ensure the performance of the vm plesae use the correct os variant from osinfo-query os. 
#network: This is used to define what qemu network to attaach the guest vm to. It can also be set to none.
#memory: This is the ram for your guest vm, defined using MiB. this allows you to define the intial size of ram as well as the maximum allowed to scale to. 
#disk: This is the storage pool settings. The max size of the guest can be defined here as well as the inital size.
#graphics: This allows you to set the graphics attributes for the guest. In general this is none, spice, and vnc. 
#location: This is one way to define the source file to install from. This is unmounted after reboot. cdrom: is not, additioanlly you can use file: to define a image as a source. 
#autostart: This is the equivlent of sudo virsh autostart name. It tells the hypervisor to start this guest with the host machine. 

sudo virt-install --connect qemu:///system --name $name --os-variant centos7.0 --network network=default --memory $ram --vcpus $vcpu --disk pool=default,size=$storage,format=qcow2 --graphics=spice --location /var/lib/libvirt/images/CentOS-7-x86_64-Everything-1908.iso  --autostart


