#!/bin/sh
if gksudo -m 'Enter the password to update package databases' 'pacman -Sy'; then
    pikaur -Qu 2> /dev/null | rofi -dmenu -p "update list" &
else
    rofi -e $'An error has occured.\nCheck system logs.'
fi
