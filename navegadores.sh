#!/usr/bin/bash

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

nav=$(echo -e "Brave\nFirefox\nCliqz\nQutebrowser\nVimb\nTor" | dmenu -i -c -l 25 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"  -p "Abrir Navegador...")

case $nav in
	Cliqz) cliqz ;;
	Qutebrowser) qutebrowser;;
	Firefox) firefox;;
	Brave) brave;;
	Vimb) vimb;;
	Tor) torbrowser-launcher;;
esac
