#!/bin/sh
pikaur -Qu 2> /dev/null | rofi -dmenu -p "update list" &
