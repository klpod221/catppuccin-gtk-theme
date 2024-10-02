#!/bin/bash

echo "Start install Catppuccin theme"

# Create directory for themes if not exists
if [ ! -d ~/.themes ]; then
  mkdir ~/.themes
fi

# Copy theme to ~/.themes
cp -r ./themes/* ~/.themes

# Copy gtk-4.0 to ~/.config
rm -rf ~/.config/gtk-4.0
cp -r ./themes/Catppuccin-Dark/gtk-4.0 ~/.config

# Apply theme
gsettings set org.gnome.desktop.interface gtk-theme "Catppuccino-Dark"
gsettings set org.gnome.desktop.wm.preferences theme "Catppuccino-Dark"

echo "Catppuccin theme installed successfully"
