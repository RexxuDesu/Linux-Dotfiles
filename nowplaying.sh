#!/bin/bash
artist=$(playerctl --player=spotify,vlc,rhythmbox metadata artist)
title=$(playerctl --player=spotify,vlc,rhythmbox metadata title)

if [ -z "$title" ]; then
    echo "No song playing"
else
    echo "$title - $artist"
fi