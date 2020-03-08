#!/bin/bash 
echo 'The following script will test the host machine for its ability to host QEMU-KVM Virtualization'
echo ' '
echo ' '
echo ' '
echo 'CPU SVM/VMX Support? Does it have lm (64 bit support)?'
grep --color -Ew 'svm|vmx|lm' /proc/cpuinfo
echo 'Is the bios enabled to support KVM?'
sudo lsmod | grep -i kvm
read -P 'Did you already install KVM? (y/n)' answer
if [$answer = 'y'] do
 sudo virt-host-validate
else
 echo 'Install KVM if the above were sucesfull and try again'
done
