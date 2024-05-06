#!/usr/bin/bash

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

escolha=$(echo -e "Nada\nDesligar\nReiniciar\nLogout" | dmenu -i -w 500 -fn Monospace-11:normal -x 700 -y 450 -o 0.85 -l 25 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -dim 0.5 -p "Realizar...")

case $escolha in
	Nada) ;;
	Desligar) poweroff;;
	Reiniciar) reboot;;
	Logout) i3-msg exit;;
esac
