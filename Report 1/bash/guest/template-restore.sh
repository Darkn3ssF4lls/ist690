#!/bin/bash

read -p 'Please choose the backup xml to restore from: ' xmlbackup
#
sudo virsh define $xmlbackup'.xml'

sudo virsh list --all
read -p 'Please choose the domain to set to autostart and power on: ' choice
#
sudo virsh autostart $choice &&

#
sudo virsh start --domain $choice 



