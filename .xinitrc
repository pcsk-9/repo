#!/bin/sh

export EDITOR="nvim"
export TERMINAL="st"
export READER="zathura"
export SHELL="zsh"
export OPENER="xdg-open"

redshift &
sxhkd &
pipewire &
pipewire-pulse &
~/.fehbg &
~/screen.sh &
picom &
exec /usr/local/bin/dwm
