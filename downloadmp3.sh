#!/bin/bash

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

link=$(echo "" | dmenu -w 500 -fn Monospace-11:normal -x 700 -y 450 -o 0.85 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -dim 0.5 -p "Link: " -i)
gen=$(echo -e "Jazz\nRock\nEletro\nRelax\nElectro Swing\nEurobeat" | dmenu -l 6 -w 500 -fn Monospace-11:normal -x 700 -y 450 -o 0.85 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -dim 0.5 -p "Link: " -i)

gen1="~/Músicas/${gen}/%(title)s.%(ext)s"
echo $gen1

yt-dlp --extract-audio --add-metadata --output $gen1 --audio-format mp3 $link && notify-send "Download concluído"
