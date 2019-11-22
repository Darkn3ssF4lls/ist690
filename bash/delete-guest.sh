#!/bin/bash

#erase the virtual machines to reset for example
virsh list --all
read -p 'Please enter only vm name: ' input
virsh dumpxml --domain $input
virsh destroy --domain $input
virsh undefine --domain $input
rm -rf '/var/lib/libvirt/qemu/',$input,'.img'  
virsh list --all




