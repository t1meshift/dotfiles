#!/bin/zsh
# Toggle touchpad with notification
if [[ $# -eq 0 ]]; then
    echo "Usage: $0 <touchpad_name>"
    echo "<touchpad_name> should be a correct device name from 'xinput'"
    exit 1
fi

osd_conf=(
    # Message           GTK icon name
    'Touchpad disabled' 'input-touchpad-off' # disabled
    'Touchpad enabled'  'input-touchpad-on'  # enabled
)

touchpad_state=$(xinput list-props $1 | grep "Device Enabled" | grep -o "[01]$")
# Inverse the state
((touchpad_state ^= 1))

xinput set-prop "FocalTechPS/2 FocalTech Touchpad" "Device Enabled" $touchpad_state
dunstify -a "my-osd-toggle-touchpad" -i $osd_conf[$touchpad_state*2+2] "$osd_conf[$touchpad_state*2+1]"
