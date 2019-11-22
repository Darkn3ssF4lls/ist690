#!/bin/bash

#Create a VM with
cd /var/lib/libvirt/qemu/ ; /usr/bin/virt-builder centos-7.1 --format raw --size 10G &&

virt-install --name centos --ram 2048 --vcpus=2 --disk path=/var/lib/libvirt/qemu/centos-7.1.img  --import


