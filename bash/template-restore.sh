#!/bin/bash

#
sudo virsh define template1-centos7.xml

#
sudo virsh autostart template1-centos7 &&

#
sudo virsh start --domain template1-centos7 



