#!/bin/sh
# Thanks to AriosJentu
# and me too
Location=$(xdg-user-dir PICTURES)/Screenshot`date +%Y-%m-%d_%H:%M:%S`.png

case "$1" in
    full)
        scrot $Location
        ;;
    current)
        scrot -u $Location
        ;;
    partial)
        scrot -s $Location
        ;;
esac

canberra-gtk-play screen-capture

case "$2" in
    clipboard)
        xclip -selection clipboard -t "image/png" < $Location
        ;;
esac


exit 0
