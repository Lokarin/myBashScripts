#!/usr/bin/bash 
VAR1="$(cat /sys/class/power_supply/BAT0/status)"
VAR2="Discharging"
VAR3=$(cat /sys/class/power_supply/BAT0/capacity)
VAR4=15

if [[ "$VAR1" = "$VAR2" && "$VAR3" -gt "$VAR4" ]]; then
	echo $VAR3"% [d]"

elif [[ "$VAR1" = "$VAR2" && "$VAR3" -le "$VAR4" ]]; then
	echo $VAR3"% [BATERIA FRACA!]"
	play ~/Música/Sounds/alert.wav

elif [[ "$VAR1" != "$VAR2" && "$VAR3" -gt "$VAR4" ]]; then
	echo $VAR3"% [c]"

elif [[ "$VAR1" != "$VAR2" && "$VAR3" -le "$VAR4" ]]; then
	echo $VAR3"% [c!]"
fi
