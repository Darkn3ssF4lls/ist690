#!/bin/bash
#This file is designed to download and configure the required files to turn a Fedora 30/31 desktop machine into a qemu-kvm host.
#Download the packages as outlined in Mastering KVM Virtualization.
sudo dnf install qemu-kvm libvirt virt-install virt-manager virt-install libguestfs-tools-c virt-viewer -y
#Download the packages requried to activate oVirt as outlined in Mastering KVM Virtualization.
sudo dnf install qemu-kvm-tools vdsm vdsm-cli spice server
#Start the libvirtd process which manages the qemu-kvm instance
sudo systemctl enable libvirtd && systemctl start libvirtd
#Add current user to the virtualization manger groups
sudo usermod -g $USER libvirt
groups
#Download CentOS version 7 and place it in the default pool location for qemu-kvm
sudo wget -O /var/lib/libvirt/images/CentOS-7-x86_64-Minimal-1908.iso "http://mirror.sjc02.svwh.net/centos/7.7.1908/isos/x86_64/CentOS-7-x86_64-Minimal-1908.iso"
