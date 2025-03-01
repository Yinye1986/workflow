#!/bin/sh
NOW=$(date +"%Y-%m-%d-%H%M%S")
grim -g "$(slurp )" -t png $HOME/截图/grim-$NOW.png
ksnip $HOME/Pictures/grim-$NOW.png
