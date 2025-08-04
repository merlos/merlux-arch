#!/bin/bash

echo "Installing audio utilities..."

pacman -Sy --noconfirm --needed \
    alsa-utils \
    alsa-firmware \
    sof-firmware \
    pavucontrol \
    pipewire-pulse \
    pulseaudio-equializer-ladspa
    
echo "Audio utilities installed successfully."