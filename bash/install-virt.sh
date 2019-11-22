#!/bin/bash

#Create a CentOS VM with Virt Builder
cd /var/lib/libvirt/qemu/ ; /usr/bin/virt-builder centos-7.1 --format raw --size 10G -o test.img &&

virt-install --name centos --ram 2048 --vcpus=2 --disk path=/var/lib/libvirt/qemu/test.img  --import


