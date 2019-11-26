#!/bin/bash

#Install the Guest VM from a ISO in the default directory
virt-install --connect qemu:///system --name template1-centos7 --os-variant centos7.0 --network network=default --memory 1907.35 --vcpus 1 --disk pool=default, size=10, format=qcow2 --graphics=spice --cdrom /installers/CentOS-7-x86_64-Everything-1908.iso --autostart



