#!/bin/bash
#While diagnosing the issues I was having mentioned in connnect.sh. As well as attempting to generate a complete guest vm. It was necessary to create a script that removed all trace of the qemu-kvm packages. This was due to the missconfigured fedora host causing kvm to only be able to use 30gb of space.
#Removes all packages previously installed by prepare-host.sh
sudo dnf install qemu-kvm libvirt virt-install virt-manager virt-install libguestfs-tools-c virt-viewer -y

#Stop and Remove the libvirtd process.
sudo systemctl stop libvirtd && systemctl disable libvirtd

#Remove the current user from the virtualization manager groups.
sudo gpasswd -d user libvirt

#Removes the directory(s) created during the install process processes. 
sudo rm -R /var/lib/libvirt/

