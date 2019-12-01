#!/bin/bash

#This file prompts the user and should be designed to deploy any number of virtual machines. 
#Generating a staic IP address for them could be in this file or I may prompt to execute another script that edits their xml files directly to make sure that their ip's arell fall inn line. 


sudo virt-install --name clone1 --ram 2048 --vcpus=1 --disk path=/var/lib/libvirt/images/template1-centos7.qcow2 --import
