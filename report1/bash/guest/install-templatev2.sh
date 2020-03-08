#!/bin/bash
sudo virt-install --connect qemu:///system \
--name $name \
--os-variant centos7.0 \
--network network=default \
--memory $ram \
--vcpus $vcpu \
--disk pool=default,size=$storage,format=qcow2 \
--graphics=spice \
--location /var/lib/libvirt/images/CentOS-7-x86_64-Everything-1908.iso  \
--autostart


