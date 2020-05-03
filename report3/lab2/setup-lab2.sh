#!/bin/bash

sudo virsh list --all && 
instance=1 &&
while [ $instance -le 3 ] 
do 
sudo virt-install --connect qemu:///system --name fedora$instance --memory 2048 \
--disk pool=vms,size=20,format=qcow2 --os-variant fedora29 \
--location /var/lib/libvirt/images/fedora32.iso \
--initrd-inject='./Downloads/lab2/fedora-ks.cfg' \
--extra-args="ks=file:/fedora-ks.cfg" \
--autostart &&
sleep 5 
let instance++ 
done &&
sudo virsh list --all



