# IST 651 - Final Project
The following repository contains the final project files created by Daniel Lewis for `IST651 - Scripting for Enterprise Data Systems`. The purpose of the repository is to configure a Fedora 30 Desktop virtual machine to perform as a QEMU-KVM virtualizion host. To help structure the project I have broken it down into -files that effect the host-, -files that effect the guests-, and -xml configuration files-. Per the instructors guidence this readme file will be considered the `small text file (or pdf) that describes the contents/purpose of each file.` Addtionally, each script will either contain a line by line description of its executed purpose or a sumary comment with the scripts attributes defined. 

## Repo Index Files
`README.md` This file is what you are reading right now. It contains all the information about the contents of this repository. 

`.gitignore` This file is used by git to ignore the local folder called `\installers`. This allows you to store local copies of your ios' but not take up your repository space with these big files. They would cause this repository to be bloated and not feasible to download and upload. 

## /bash Files
This directory is empty. 

### /bash/host Files
`prepare-host.sh` This file is used for a Fedora 30 bassed system to download the required software packages to run qemu-kvm virtualization. Additionally, it will start the required services and add your current user to the correct groups to manage virtualization. Finally, it is set to download CentOS7 from RIT's mirror. This will be depricated when CentOS7 is no longer supported. 

### /bash/guest Files
`install-templatev2.sh` This file contains the source code to deploy a CentOS7.0 VM upon a Fedora30 host running QEMU-KVM Virtualization.

`convert-template.sh` This file contains all the source code to convert a running VM into a Template for Cloning in QEMU-KVM Virtualization. 

`cloning-engine.sh` This file contains all the source code to perform a basic clone of a templated VM in QEMU-KVM Virtulization.

`template-restore.sh`This is a legacy file that was used to restore a templated VM to a working VM in QEMU-KVM Virtulization. 

## /xml Files 
This starts with an empty text file. It is in place to be the storage for your guest vm backups. These can be used in the templating process. 
