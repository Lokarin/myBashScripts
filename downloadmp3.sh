#!/bin/bash

youtube-dl --extract-audio --add-metadata --output '~/Música/TouhouGameplay/%(title)s.%(ext)s' --audio-format mp3 $1
