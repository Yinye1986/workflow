#!/bin/sh
NOW=$(date +"%Y-%m-%d-%H%M%S")
grim -g "$(slurp )" -t png $HOME/.SCREENSHOT/grim-$NOW.png
ksnip $HOME/.SCREENSHOT/grim-$NOW.png
