#!/bin/bash -eux

if [[ "$PACKER_BUILD_NAME" =~ ^magma-alpine38-(vmware|hyperv|libvirt|parallels|virtualbox)-(x64|x32|a64|a32|p64|p32|m64|m32)$ ]]; then
  printf "\n127.0.0.1    magma magma.localdomain\n" >> /etc/hosts
  echo "magma.localdomain" > /etc/hostname
  hostname magma.localdomain
elif [[ "$PACKER_BUILD_NAME" =~ ^generic-alpine38-(vmware|hyperv|libvirt|parallels|virtualbox)-(x64|x32|a64|a32|p64|p32|m64|m32)$ ]]; then
  printf "\n127.0.0.1    alpine38 alpine38.localdomain\n" >> /etc/hosts
  echo "alpine38.localdomain" > /etc/hostname
  hostname alpine38.localdomain
else
  printf "\n127.0.0.1    bazinga bazinga.localdomain\n" >> /etc/hosts
  echo "bazinga.localdomain" > /etc/hostname
  hostname bazinga.localdomain
fi
