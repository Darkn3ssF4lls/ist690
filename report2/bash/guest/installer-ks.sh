#!/bin/bash
sudo virt-install --connect qemu:///system --name centos7-ks --memory 2048 \
--disk pool=default,size=10,format=qcow2 --os-variant centos7.0 \
--location /var/lib/libvirt/images/centos7.iso \
--initrd-inject='/home/localadmin/ist690/report2/kickstart/ks.cfg' \
--extra-args="ks=file:/ks.cfg" \
--autostart
