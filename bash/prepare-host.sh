#!/bin/bash

#prepare fedora to manage vm's with virt
dnf install qemu-kvm libvirt virt-install virt-manager virt-install libguestfs-tools-c -y
systemctl enable libvirtd && systemctl start libvirtd

#prepare fedora to manage vm's with OZ
dnf install -y oz libguestfs-tools

#Prepare fedora for ansible
dnf install ansible 
subscription-manager repos --enable ansible-2.9-for-rhel-8-x86_64-rpms
