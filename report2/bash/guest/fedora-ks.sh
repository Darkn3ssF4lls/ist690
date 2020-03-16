#!/bin/bash
sudo virt-install --connect qemu:///system --name fedora31-ks --memory 2048 \
--disk pool=default,size=10,format=qcow2 --os-variant fedora29 \
--location /var/lib/libvirt/images/fedora31.iso \
--initrd-inject='/home/localadmin/ist690/report2/kickstart/fedora-ks.cfg' \
--extra-args="ks=file:/fedora-ks.cfg" \
--autostart
