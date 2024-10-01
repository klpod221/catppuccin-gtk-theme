#!/bin/bash

# Get current gtk theme
theme=$(gsettings get org.gnome.desktop.interface gtk-theme)

echo "Current gtk theme: $theme"

current_folder=$(pwd)

rm -rf ~/.config/gtk-4.0/*
ln -s $current_folder/Catppuccin-Dark/gtk-4.0/* ~/.config/gtk-4.0
