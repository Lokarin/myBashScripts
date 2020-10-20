#!/usr/bin/bash

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

th=$(echo -e "7 - Perfect Cherry Blossom\n9 - Phantasmagoria of Flower View\n11 - Subterranean Animism\n14.3 - Impossible Spell Card\n16 - Hidden Star in 4 Seasons" | dmenu -i -c -l 25 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"  -p "Jogar Touhou...")

case $th in
        "7 - Perfect Cherry Blossom") wine ~/Documentos/Touhou/Touhou\ 7\ –\ Perfect\ Cherry\ Blossom\ \(English\ Patched\)/th07e.exe ;;
        "9 - Phantasmagoria of Flower View") wine ~/Documentos/Touhou/Touhou\ 9\ -\ Phantasmagoria\ of\ Flower\ View/th09thpatch-en.exe ;;
        "11 - Subterranean Animism") wine ~/Documentos/Touhou/Touhou\ 11\ -\ Subterranean\ Animism/th11thpatch-en.exe ;;
        "14.3 - Impossible Spell Card") wine ~/Documentos/Touhou/Touhou\ 14.3\ ~\ Impossible\ Spell\ Card/Impossible\ spell\ card/th143/th143.exe ;;
        "16 - Hidden Star in 4 Seasons") wine ~/Documentos/Touhou/2hu16\ -\ Hidden\ Star\ in\ 4\ Seasons/th16thpatchen.exe ;;
esac

