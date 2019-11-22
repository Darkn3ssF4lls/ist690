#!/bin/bash

#erase the virtual machines to reset for example
virsh list --all
read -p 'Please enter only vm name: ' input
rm -f /var/lib/libvirt/qemu/$input
virsh list --all




