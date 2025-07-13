#!/bin/sh

# Install macOS hardware utilities
echo "Installing MacOS hardware utilities..."

pacman -Sy --noconfirm --needed \
    linux-macbook \
    broadcom-wl \
    broadcom-wl-dkms \
    dmidecode \
    lshw \
    hwinfo

echo "In Mac you need to manually add 'acpi_osi=Darwin' to your bootloader configuration."
