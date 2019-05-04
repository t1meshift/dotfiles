#
# ~/.profile
#
#

[[ "$XDG_CURRENT_DESKTOP" == "KDE" ]] || export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nvim
export TERMINAL=/usr/bin/termite

[[ -f ~/.extend.profile ]] && . ~/.extend.profile
PATH="$PATH:/home/sh1ft/.gem/ruby/2.6.0/bin"
