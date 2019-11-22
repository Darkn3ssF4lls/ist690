#!/bin/bash

#erase the virtual machines to reset for example
varsh-list
read input
rm -f /var/lib/libvirt/qemu/$input
varsh-list




