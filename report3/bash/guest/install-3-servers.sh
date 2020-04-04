#!/bin/bash
sudo virt-install --connect qemu:///system \
--name controller \
--memory 4096 \
--cpu 2
--disk pool=vms,size=20,format=qcow2 \
--location /var/lib/libvirt/images/ubuntu-18.04.4.iso

