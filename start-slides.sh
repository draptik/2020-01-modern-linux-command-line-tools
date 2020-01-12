#!/bin/bash
START_PRESENTATION='patat slides.md'

KITTY=`which kitty`
#KITTY_CONFIG=~/.config/kitty/switch-to-solarized-light.sh
#KITTY_CONFIG=~/.config/kitty/switch-to-github.sh
KITTY_CONFIG=~/.config/kitty/switch-to-tomorrow-night-bright.sh

if [[ -f "$KITTY_CONFIG" ]]; then
    "${KITTY}" --start-as=fullscreen $START_PRESENTATION
else
    $START_PRESENTATION
fi
