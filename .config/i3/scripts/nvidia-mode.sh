#!/bin/sh
current_tty=$(sudo fgconsole)
nvidia_tty=4

chvt $nvidia_tty
nvidia-xrun i3
chvt $current_tty
