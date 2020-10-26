#!/bin/bash

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

sudo gimp ~/Documentos/GimpFiles/$( ls ~/Documentos/GimpFiles/ | dmenu -i -c -l 30 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"  -p "$1" )
