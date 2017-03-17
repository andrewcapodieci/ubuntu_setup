#!/bin/bash 
 

if [[ -f ~/.config/autostart/yakuake:kde4__yakuake.desktop ]]; then
  echo "Yakuake is already a startup application."
else
  if [[ -f /usr/share/app-install/desktop/yakuake:kde4__yakuake.desktop ]]; then
    cp /usr/share/app-install/desktop/yakuake\:kde4__yakuake.desktop ~/.config/autostart/
    echo "Added yakuake to startup apps."
  else
    read -p "Cannot find yakuake.desktop file to add to startup apps. Continue with setup? [Y/n]?:" -n 1 -r
    echo
      if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "Continuing..."
      else
        exit
      fi
  fi 
fi

echo "Configuring gnome-terminal font"
gconftool-2 --set /apps/gnome-terminal/profiles/Default/font --type string "Liberation Mono 9"
gconftool-2 --set /apps/gnome-terminal/profiles/Default/use_system_font --type=boolean false
