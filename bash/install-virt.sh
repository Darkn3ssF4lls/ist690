#!/bin/bash

#Download the Guest VM Disk Image file
#cd /var/lib/libvirt/images/ ; /usr/bin/virt-builder ubuntu19.04 --format raw --size 10G &&

virt-install --network bridge:virbr0 --name testvm1 \
--os-variant=ubuntu19.04 --ram 2048 --vcpus=2 \
--disk path=/var/lib/libvirt/images/testvm1-os.qcow2,format=qcow2,bus=virtio,size=10 \
--graphics spice --location=http://releases.ubuntu.com/19.10/ubuntu-19.10-desktop-amd64.iso

