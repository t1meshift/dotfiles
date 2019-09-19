#!/bin/sh
lockscreenTime=$(echo "$1*60" | bc)
dimTime=$(echo $lockscreenTime-10 | bc)
export I3_LOCKER_COMMAND="$2"
export PRIMARY_DISPLAY="$(xrandr | awk '/ primary/{print $1}')"
socketPath=/tmp/xidlehook.sock

killall xidlehook
rm "$socketPath"
xidlehook \
    --socket "$socketPath" \
    --not-when-fullscreen \
    --timer normal $dimTime \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness .1' \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1' \
    --timer primary 10 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1; $I3_LOCKER_COMMAND' \
    '' > $HOME/.config/i3/scripts/lockscreen.log
