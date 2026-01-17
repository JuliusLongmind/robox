#!/bin/bash -eux

# Make sure Udev doesn't block our network
printf "Cleaning up udev rules.\n"
mkdir /etc/udev/rules.d/70-persistent-net.rules
