#!/bin/bash
sudo virt-clone --original template-test \
--name centos7 \
--file /var/lib/libvirt/images/centos7.qcow2 \
--auto-clone

