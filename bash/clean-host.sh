#!/bin/bash

#prepare fedora to manage vm's with virt
dnf remove qemu-kvm libvirt virt-install virt-manager virt-install libguestfs-tools-c -y

#prepare fedora to manage vm's with OZ
dnf remove -y oz libguestfs-tools

#Prepare fedora for ansible
dnf remove ansible 
subscription-manager repos --enable ansible-2.9-for-rhel-8-x86_64-rpms
