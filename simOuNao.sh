#!/bin/bash

# O input "$1" será o texto do dmenu
# e o input "$2" será o comando a ser rodado.

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

[ "$(echo -e "Não\nSim" | dmenu -i -c -l 25 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"  -p "$1")" == "Sim" ] && $2
