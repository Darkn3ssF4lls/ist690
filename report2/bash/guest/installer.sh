#!/bin/bash
sudo virt-install --connect qemu:///system \
--name test \
--os-variant centos7.0 \
--network network=default \
--memory 2048 \
--vcpus 1 \
--disk pool=default,size=10,format=qcow2 \
--graphics=spice \
--location /var/lib/libvirt/images/centos7.iso \
--autostart 


