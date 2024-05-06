#!/bin/bash

# O input "$1" será o texto do dmenu
# e o input "$2" será o comando a ser rodado.

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

[ "$(echo -e "Não\nSim" | dmenu -w 500 -fn Monospace-11:normal -x 700 -y 450 -o 0.85 -l 25 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -dim 0.5 -p "$1" -i)" == "Sim" ] && $2
