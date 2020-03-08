#!/bin/bash
sudo virt-install --connect qemu:///system \
--name auto-centos \
--memory 2048 \
--disk pool=default,size=10,format=qcow2 \
--extra-args="ks=/var/lib/libvirt/images/ks.cfg"

