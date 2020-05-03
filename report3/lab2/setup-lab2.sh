#!/bin/bash

sudo virsh list --all && 
read -p 'Please enter how many dublicate Fedora Server Machines to Establish: ' clones &&
instance=1 &&
while [ $instance -le $clones ] 
do 
sudo virt-install --connect qemu:///system --name fedora$instance --memory 2048 \
--disk pool=default,size=20,format=qcow2 --os-variant fedora29 \
--location /var/lib/libvirt/images/fedora32.iso \
--initrd-inject='./Downloads/fedora-ks.cfg' \
--extra-args="ks=file:/fedora-ks.cfg" \
--autostart
sleep 5
let instance++
done
sudo virsh list --all



