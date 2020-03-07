#!/bin/bash
sudo virt-install --connect qemu:///system \
--name test \
--memory 2048 \
--disk pool=default,size=10,format=qcow2 \
--location /var/lib/libvirt/images/centos7.iso

