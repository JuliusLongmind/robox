#!/bin/bash -eux

if [[ "$PACKER_BUILD_NAME" =~ ^magma-fedora40-(vmware|hyperv|libvirt|parallels|virtualbox)-(x64|x32|a64|a32|p64|p32|m64|m32)$ ]]; then
  printf "\n127.0.0.1    magma magma.localdomain\n" >>/etc/hosts
  echo "magma.localdomain" >/etc/hostname
  hostnamectl set-hostname magma.localdomain
elif [[ "$PACKER_BUILD_NAME" =~ ^generic-fedora40-(vmware|hyperv|libvirt|parallels|virtualbox)-(x64|x32|a64|a32|p64|p32|m64|m32)$ ]]; then
  printf "\n127.0.0.1    fedora40 fedora40.localdomain\n" >>/etc/hosts
  echo "fedora40.localdomain" >/etc/hostname
  hostnamectl set-hostname fedora40.localdomain
else
  printf "\n127.0.0.1    bazinga bazinga.localdomain\n" >>/etc/hosts
  echo "bazinga.localdomain" >/etc/hostname
  hostnamectl set-hostname bazinga.localdomain
fi
