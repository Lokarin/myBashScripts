#!/bin/bash

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

dmenu_run -w 500 -fn Monospace-11:normal -x 700 -y 250 -o 0.85 -l 25 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"
