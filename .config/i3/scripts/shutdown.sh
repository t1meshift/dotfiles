#!/bin/sh
selection=$(echo -e "Cancel\nExit\nReboot\nShutdown" | rofi -dmenu -p "Power menu!")
case $selection in
    "Exit")
        i3-msg exit
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Shutdown")
        systemctl poweroff
        ;;
esac
