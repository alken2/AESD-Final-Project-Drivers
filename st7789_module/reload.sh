#!/bin/bash

# Unload
sudo dtoverlay -r st7789v_240x320
sudo modprobe -r fb_st7789v
sudo modprobe -r fbtft

# Compile
sudo make

# Load again
sudo modprobe fbtft
sudo insmod ./fb_st7789v.ko
sudo dtoverlay st7789v_240x320