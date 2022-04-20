#!/usr/bin/bash

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

x=1
z=~/
while [ $x == 1  ]; 
do
	y=$(cd $z && ls -d $PWD/* | dmenu -i -fn monospace -dim 0.1 -o 0.85 -x 710 -y 440 -w 500 -l 20 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"  -p "Diretório...")

	if [[ $y == *.pdf ]]; then 
		x=0
		zathura $y
	elif [[ $y == *.png ]] || [[ $y == *.jpg ]]; then 
		x=0
		sxiv $y
	else
		z=$y
	fi
done
