#!/bin/bash -eux

if [[ "$PACKER_BUILD_NAME" =~ ^magma-netbsd9-(vmware|hyperv|libvirt|parallels|virtualbox)-(x64|x32|a64|a32|p64|p32|m64|m32)$ ]]; then
  printf "\n127.0.0.1    magma magma.localdomain\n" >> /etc/hosts
  echo "magma.localdomain" > /etc/myname
  hostname magma.localdomain
elif [[ "$PACKER_BUILD_NAME" =~ ^generic-netbsd9-(vmware|hyperv|libvirt|parallels|virtualbox)-(x64|x32|a64|a32|p64|p32|m64|m32)$ ]]; then
  printf "\n127.0.0.1    netbsd9 netbsd9.localdomain\n" >> /etc/hosts
  echo "netbsd9.localdomain" > /etc/myname
  hostname netbsd9.localdomain
else
  printf "\n127.0.0.1    bazinga bazinga.localdomain\n" >> /etc/hosts
  echo "bazinga.localdomain" > /etc/myname
  hostname bazinga.localdomain
fi
