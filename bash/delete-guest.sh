#!/bin/bash

#erase the virtual machines to reset for example
virsh list
read input
rm -f /var/lib/libvirt/qemu/$input
virsh list




