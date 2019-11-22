#!/bin/bash

#erase the virtual machines to reset for example
virsh list --all
read -p 'Please enter only vm name: ' input
virsh dumpxml --domain $input
virsh list --all




