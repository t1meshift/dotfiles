#!/bin/zsh

# Symlinks are for wimbs, real heroes use copy :)

src=~
dest=~/Документы/t1meshift-dotfiles
dotfiles=(
    ".zshrc"
    ".Xresources"
    ".profile"
    ".gtkrc-2.0"
    ".config/i3-mimeapps.list"
    ".config/compton.conf"
    ".config/autorandr/postswitch"
    ".config/dunst/"
    ".config/i3/"
    ".config/Kvantum/kvantum.kvconfig"
    ".config/polybar/"
    ".config/rofi/"
    ".config/termite/"
    ".config/vis/config"
    ".config/vis/colors/"
    ".config/vlc/"
    ".config/zathura/"
    ".config/sxiv/"
    ".config/ranger/"
    ".config/nvim/init.vim"
    ".config/nvim/local_bundles.vim"
    ".config/nvim/local_init.vim"
    ".local/share/applications/nvim.desktop"
    "sync_dotfiles.sh"
)

for i in $dotfiles; do
    if ! diff -rdq "$src/$i" "$dest/$i"; then
        cp -Triuv "$src/$i" "$dest/$i"
    fi
done

# vim: ts=8 sts=0 expandtab sw=4 smarttab
