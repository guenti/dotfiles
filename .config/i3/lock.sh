#!/usr/bin/env bash

icon="$HOME/.config/i3/locked.png"
tmpbg='/tmp/screen.png'

scrot -z "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -n -i "$tmpbg"

rm $tmpbg
