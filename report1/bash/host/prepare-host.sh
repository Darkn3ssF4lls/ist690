#!/bin/bash
sudo dnf update -y

sudo dnf install qemu-kvm libvirt virt-install virt-manager virt-install libguestfs-tools-c virt-viewer -y

#Start the libvirtd process which manages the qemu-kvm instance
sudo systemctl enable libvirtd && systemctl start libvirtd

#Add current user to the virtualization manger groups
sudo usermod -g $USER libvirt
groups

#Download CentOS version 7 and place it in the default pool location for qemu-kvm
sudo wget -O /var/lib/libvirt/images/centos7.iso "http://mirrors.rit.edu/centos/7.7.1908/isos/x86_64/CentOS-7-x86_64-Everything-1908.iso"
