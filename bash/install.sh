#!/bin/bash

#Create a VM Style 2









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

