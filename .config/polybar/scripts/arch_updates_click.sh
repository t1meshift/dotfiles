#!/bin/sh
gksudo -m 'Enter the password to update package databases' 'pacman -Sy' && pikaur -Qu 2> /dev/null | rofi -dmenu -p "update list" &
