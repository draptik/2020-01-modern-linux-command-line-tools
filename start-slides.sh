#!/bin/bash
START_PRESENTATION='patat slides.md'

KITTY=`which kitty`

## my .dotfiles are located at
##      https://github.com/draptik/dotfiles
##
KITTY_CONFIG=~/.config/kitty/switch-to-tomorrow-night-bright.sh
KITTY_MAIN_CONFIG=~/.config/kitty/kitty.large-font.conf

if [[ -f "$KITTY_CONFIG" ]]; then
    "${KITTY}" --config=${KITTY_MAIN_CONFIG} --start-as=fullscreen $START_PRESENTATION
else
    $START_PRESENTATION
fi
