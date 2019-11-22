#!/bin/bash
#Download the Guest VM Disk Image file
virt-install --name guest1-centos7.7 --memory 2048 --vcpus 1 --disk size=10g --location=/var/lib/libvirt/images/CentOS-7-x86_64-Minimal-1908.iso --os-variant centos7.7 

