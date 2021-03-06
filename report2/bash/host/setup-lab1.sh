#!/bin/bash
sudo yum groupinstall "Virtualization" "Virtualization Platform" "Virtualization Tools" &&
sudo yum install system-config-kickstart
sudo systemctl enable libvirtd && systemctl start libvirtd &&
sudo usermod -a -G libvirt $USER  &&
groups
sudo wget -O /var/lib/libvirt/images/centos7.iso 'http://mirrors.rit.edu/centos/7.7.1908/isos/x86_64/CentOS-7-x86_64-Everything-1908.iso'
sudo wget -O /var/lib/libvirt/images/fedora31-server.iso 'https://download.fedoraproject.org/pub/fedora/linux/releases/31/Server/x86_64/iso/Fedora-Server-dvd-x86_64-31-1.9.iso'

#This code is to download a copy of CentOS8 to be used as a Guest
#This is here for record keeping
#sudo wget -O /var/lib/libvirt/images/centos8.iso 'http://mirror.vtti.vt.edu/centos/8.1.1911/isos/x86_64/CentOS-8.1.1911-x86_64-dvd1.iso'

#This code is to download a copy of CentOS7 to be used as a guest#
#It is currently disabled due to trying to use raspbian as guest##
#sudo wget -O /var/lib/libvirt/images/centos7.iso 'http://mirrors.rit.edu/centos/7.7.1908/isos/x86_64/CentOS-7-x86_64-Everything-1908.iso'

#This code is to try and install a lighteight Raspbian VM#
##At this Time it was not working and so it is commented##
#sudo wget -O /var/lib/libvirt/images/raspbian.iso 'https://downloads.raspberrypi.org/rpd_x86_latest'
#sudo wget -O /var/lib/libvirt/images/raspbian.zip 'https://downloads.raspberrypi.org/raspbian_lite_latest'
#sudo /var/lib/libvirt/images
#sudo unzip raspbian.zip 
#sudo ls -la
#echo 'Type the title of the file exactly' title
#mv ./$title ./raspbian.img

#This code creates a fedora 31 server iso in the image directory. 
#sudo wget -O /var/lib/libvirt/images/fedora31-server.iso 'https://download.fedoraproject.org/pub/fedora/linux/releases/31/Server/x86_64/iso/Fedora-Server-dvd-x86_64-31-1.9.iso'

#This code creates a fedora 31 workstation iso in the image directory.
#sudo wget -O /var/lib/libvirt/images/fedora31-work.iso 'https://download.fedoraproject.org/pub/fedora/linux/releases/31/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-31-1.9.iso'

#Link to ISO File Info Page
#https://www.raspberrypi.org/downloads/raspberry-pi-desktop/
#Link to Emulate Rasberry Pi Page
#https://gist.github.com/stefanozanella/4608873
#Link to Rasberry Pi v3 B+ Page
#https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/
