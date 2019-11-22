#!/bin/bash

#Create a Ubuntu VM with Virt Builder
cd /var/lib/libvirt/qemu/ ; /usr/bin/virt-builder ubuntu-18.04 --format raw --size 10G &&
virt-install --name ubuntu-18.04 --ram 2048 --vcpus=2 --disk path=/var/lib/libvirt/qemu/ubuntu-18.04.img  --import


