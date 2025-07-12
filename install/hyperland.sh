pacman -S --noconfirm --needed \
  kitty \
  hyprland hyprshot hyprpicker hyprlock hypridle  \
  wofi waybar mako swaybg ttf-font-awesome\
  #polkit-gnome hyprland-qtutils \
  #xdg-desktop-portal-hyprland xdg-desktop-portal-gtk

# Start Hyprland on first session
#echo "[[ -z \$DISPLAY && \$(tty) == /dev/tty1 ]] && exec Hyprland" >~/.bash_profile