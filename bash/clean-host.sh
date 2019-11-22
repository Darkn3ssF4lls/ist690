#!/bin/bash

#prepare fedora to manage vm's with virt
dnf remove qemu-kvm libvirt virt-install virt-manager virt-install libguestfs-tools-c -y

#prepare fedora to manage vm's with OZ
dnf remove -y oz libguestfs-tools

#Prepare fedora for ansible
dnf remove ansible 

