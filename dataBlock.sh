#!/bin/bash

#calender=" " 
getdate=$(date '+%d %B (%A)      %H:%M  ')
date="$calender$getdate" 
color=$(xrdb -query | grep '*color5'| awk '{print $NF}')
echo "<span foreground=\""$color"\">"$date"</span>"
