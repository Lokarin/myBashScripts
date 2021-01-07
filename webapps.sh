#!/usr/bin/bash

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

app=$(echo -e "ProtonMail\nGitHub\nYouTube\nStartPage\nReddit\nTwitch" | dmenu -i -c -l 25 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -p "Abrir WebApp...")

case $app in
        ProtonMail) firefox -ssb https://mail.protonmail.com/inbox;;
        GitHub) firefox -ssb https://github.com;;
        YouTube) firefox -ssb https://youtube.com;;
        StartPage) firefox -ssb https://startpage.com;;
        Reddit) firefox -ssb https://www.reddit.com;;
        Twitch) firefox -ssb https://www.twitch.tv/;;
esac
