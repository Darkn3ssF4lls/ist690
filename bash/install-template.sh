#!/bin/bash

#Install the Guest VM from a ISO in the default directory
virt-install --network bridge:virbr0 --name guest4-centos7.0 \
--os-variant centos7.0 --memory 2048 --vcpus 1 --disk size=10 --graphics=spice \
--location=/var/lib/libvirt/images/CentOS-7-x86_64-Everything-1908.iso \
--disk path=/var/lib/libvirt/images/guest4-centos7.0.qcow2,format=qcow2,bus=virtio,size=10


