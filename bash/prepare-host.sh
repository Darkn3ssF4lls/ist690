#!/bin/bash

#prepare fedora to manage vm's with virt
dnf install qemu-kvm libvirt virt-install virt-manager virt-install libguestfs-tools-c -y
systemctl enable libvirtd && systemctl start libvirtd

#prepare fedora to manage vm's with OZ
dnf install -y oz libguestfs-tools

#Prepare fedora for ansible
dnf install ansible 

