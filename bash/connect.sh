/!/bin/bash

#During the project issues with managing the vm's became presnet. One solution that was found was to connect to the hypervisor directly. This command could be used to connect to a non local instance of qemu as well.
#Connect to the local virt-manager
virsh -c qemu:///system

