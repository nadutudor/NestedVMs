#!/bin/bash

NAME="$1"

sudo virsh destroy $NAME
sudo virsh undefine $NAME

sudo rm /var/lib/libvirt/images/seed.iso
sudo rm /var/lib/libvirt/images/ubuntu-vm.qcow2

sudo cp seed.iso /var/lib/libvirt/images
sudo chown libvirt-qemu:libvirt-qemu /var/lib/libvirt/images/seed.iso
sudo cp ../img/ubuntu-22.04-server-cloudimg-amd64.img /var/lib/libvirt/images/ubuntu-vm.qcow2
sudo chown libvirt-qemu:libvirt-qemu /var/lib/libvirt/images/ubuntu-vm.qcow2
