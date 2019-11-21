#!/bin/bash

#Create a VM Style 2
cd /var/lib/libvirt/qemu/ ; /usr/bin/virt-builder centos-7.1 --format raw --size 10G &&

virt-install --name centos --ram 2048 --vcpus=2 --disk path=/var/lib/libvirt/qemu/centos7.1-original-vm.img  --import






#Creating a VM Style 1
#qemu-img create -f raw -o size=10G /var/lib/libvirt/qemu/centos7.img
#virt-install \
#--name Win7 \
#--ram 1024 \
#--disk path=./var/lib/libvirt/qemu/fedora30.img \
#--vcpus 1 \
#--os-type Fedora \
#--os-variant 30 \
#--network bridge=virbr0 \
#--graphics vnc,port=5999 \
#--console pty,target_type=serial \
#--cdrom ~/Desktop/final/installs/win7.iso \

#virt-viewer <virtual machine > name

