#!/bin/bash

case $BLOCK_BUTTON in
	1) notify-send "$(cal)"
esac

#calender=" " 
getdate=$(date '+%d %B (%A)      %H:%M  ')
date="$calender$getdate" 
color=$(xrdb -query | grep '*color5'| awk '{print $NF}')
echo "<span foreground=\""$color"\">"$date"</span>"
