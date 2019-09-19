#!/bin/sh
pgrep i3lock || (echo -ne "" | socat - UNIX-CONNECT:/tmp/xidlehook.sock)
