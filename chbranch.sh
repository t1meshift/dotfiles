#!/bin/sh
sudo pacman-mirrors --api --set-branch "$1" && sudo pacman-mirrors 
--fasttrack 5 && sudo pacman -Syyuu
