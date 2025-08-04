#!/bin/bash

# Install Ruby using gcc-14 for compatibility
yay -S --noconfirm --needed gcc14 mise
mise settings set ruby.ruby_build_opts "CC=gcc-14 CXX=g++-14"
l