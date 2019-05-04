#!/bin/sh
if ! update_cnt=$(pikaur -Qu 2> /dev/null | wc -l); then
    update_cnt=0
fi
if [ "$update_cnt" -gt 0 ]; then
    echo " $update_cnt"
else
    exit 1
fi
# vim: set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab:
