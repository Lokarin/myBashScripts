#!/usr/bin/bash

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

th=$(echo -e "7 - Perfect Cherry Blossom\n9 - Phantasmagoria of Flower View\n10 - Mountain of Faith\n11 - Subterranean Animism\n14.3 - Impossible Spell Card\n16 - Hidden Star in 4 Seasons" | dmenu -i -c -l 25 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"  -p "Jogar Touhou...")

case $th in
	"7 - Perfect Cherry Blossom") (cd ~/Documentos/Touhou/Touhou\ 7\ –\ Perfect\ Cherry\ Blossom\ \(English\ Patched\) && wine th07e.exe) ;;
	"9 - Phantasmagoria of Flower View") (cd ~/Documentos/Touhou/Touhou\ 9\ -\ Phantasmagoria\ of\ Flower\ View && wine th09thpatch-en.exe) ;;
	"10 - Mountain of Faith") (cd ~/Documentos/Touhou/Touhou\ 10\ -\ Mountain\ of\ Faith && wine Touhou10.exe) ;;
	"11 - Subterranean Animism") (cd ~/Documentos/Touhou/Touhou\ 11\ -\ Subterranean\ Animism && wine th11thpatch-en.exe) ;;
	"14.3 - Impossible Spell Card") (cd ~/Documentos/Touhou/Touhou\ 14.3\ ~\ Impossible\ Spell\ Card/Impossible\ spell\ card/th143 && wine th143.exe) ;;
	"16 - Hidden Star in 4 Seasons") (cd ~/Documentos/Touhou/2hu16\ -\ Hidden\ Star\ in\ 4\ Seasons && wine th16thpatchen.exe) ;;
esac
