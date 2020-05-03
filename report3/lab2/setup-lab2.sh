#!/bin/bash

sudo virsh list --all && 
instance=4 &&
while [ $instance -le 5 ] 
do 
sudo virt-install --connect qemu:///system --name fedora$instance --memory 2048 --vcpus 1 \
--disk pool=vms,size=20,format=qcow2 --os-variant fedora29 \
--location /var/lib/libvirt/images/fedora32.iso \
--network network=default \
--initrd-inject='./Downloads/lab2/fedora-ks.cfg' \
--extra-args="ks=file:/fedora-ks.cfg" \
--autostart &
sleep 5 
let instance++ 
done &&
sudo virsh list --all
