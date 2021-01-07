#!/usr/bin/bash

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

app=$(echo -e "ProtonMail\nGitHub\nYouTube\nStartPage\nReddit" | dmenu -i -c -l 25 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -p "Abrir WebApp...")

case $app in
        ProtonMail) firefox -ssb https://mail.protonmail.com/inbox;;
        GitHub) firefox -ssb https://https://www.github.com;;
        YouTube) firefox -ssb https://https://www.youtube.com;;
        StartPage) firefox -ssb https://https://www.startpage.com;;
        Reddit) firefox -ssb https://www.reddit.com;;
esac
