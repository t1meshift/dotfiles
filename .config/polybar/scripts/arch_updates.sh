#!/bin/sh
if ! repo_cnt=$(checkupdates 2> /dev/null | wc -l); then
    repo_cnt=0
fi
if ! aur_cnt=$(pikaur -Qua 2> /dev/null | wc -l); then
    aur_cnt=0
fi
update_cnt=$(("$aur_cnt" + "$repo_cnt"))
if [ "$update_cnt" -gt 0 ]; then
    echo " $update_cnt"
else
    exit 1
fi
# vim: set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab:
