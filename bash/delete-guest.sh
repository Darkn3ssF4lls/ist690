#!/bin/bash

#erase the virtual machines to reset for example
virsh list --all
read -p 'Please enter only vm name: ' input
virsh dumpxml --domain $input
virsh destroy --domain $input
virsh undefine --domain $input
ls -l /var/lib/libvirt/qemu
read -p 'Please select the img file to complete the deletion: ' input
rm -rf '/var/lib/libvirt/qemu/',$input,'.img'  
echo 'Double check your VM is gone'
virsh list --all
ls -l /var/lib/libvirt/qemu




