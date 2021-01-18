#!/usr/bin/bash

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

app=$(echo -e "ProtonMail\nGitHub\nYouTube\nDuckDuckGo\nReddit\nTwitch\nTwitter\nWhatsapp" | dmenu -i -c -l 25 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -p "Abrir WebApp...")

#case $app in
#        ProtonMail) firefox -ssb https://mail.protonmail.com/inbox;;
#        GitHub) firefox -ssb https://github.com;;
#        YouTube) firefox -ssb https://youtube.com;;
#        DuckDuckGo) firefox -ssb https://duckduckgo.com;;
#        Reddit) firefox -ssb https://www.reddit.com;;
#        Twitch) firefox -ssb https://www.twitch.tv/;;
#        Twitter) firefox -ssb https://twitter.com/home;;
#        Whatsapp) firefox -ssb https://web.whatsapp.com/;;
#esac

case $app in
        ProtonMail) librewolf -ssb https://mail.protonmail.com/inbox;;
        GitHub) librewolf -ssb https://github.com;;
        YouTube) librewolf -ssb https://youtube.com;;
        DuckDuckGo) librewolf -ssb https://duckduckgo.com;;
        Reddit) librewolf -ssb https://www.reddit.com;;
        Twitch) librewolf -ssb https://www.twitch.tv/;;
        Twitter) librewolf -ssb https://twitter.com/home;;
        Whatsapp) librewolf -ssb https://web.whatsapp.com/;;
esac
