#!/bin/bash

echo "Installing network utilities..."

pacman -Sy --noconfirm --needed \
    iwd \
    impala \
    dhcping \
    dhcpcd \
    net-tools \
    iputils \
    openssh \
    nmap

# iwd: A modern wireless daemon for managing Wi-Fi connections.
# impala: A tool for managing network interfaces.
# dhcping: A utility to send DHCP requests and check for responses.
# dhcpcd: A DHCP client daemon for obtaining IP addresses.
# net-tools: Provides essential networking commands like ifconfig, route, netstat, arp, hostname
# iputils: Provides basic network utilities like ping, traceroute, tracpath, arping, fping.
# openssh: Provides SSH client and server for secure remote access.

# References: 
# https://wiki.archlinux.org/title/Iwd#Enable_built-in_network_configuration

echo "Network utilities installed successfully."

# enable dhcpcd service
echo "Enabling iwd and dhcpcd services..."
sudo systemctl enable iwd.service
sudo systemctl start iwd.service
sudo systemctl enable dhcpcd.service
sudo systemctl start dhcpcd.service
