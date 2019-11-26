#!/bin/bash

#Prepare Fedora30 to be a qemu-kvm host:
#Download the packages as outlined in Mastering KVM Virtualization.
dnf install qemu-kvm libvirt virt-install virt-manager virt-install libguestfs-tools-c -y

#Start the libvirtd process which manages the qemu-kvm instance.
systemctl enable libvirtd && systemctl start libvirtd

#Add current user to the virtualization manger groups
sudo adduser -aG $USER libvirt