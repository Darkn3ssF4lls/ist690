#!/bin/bash

#Install the Guest VM from a ISO in the default directory
virt-install --network bridge:virbr0 --name template-centos7.0 \
--os-variant centos7.0 --memory 2048 --vcpus 1 --disk size=10 --graphics=spice \
--cdrom /installers/CentOS-7-x86_64-Everything-1908.iso --location /var/lib/libvirt/images/template-centos7.0.qcow2

