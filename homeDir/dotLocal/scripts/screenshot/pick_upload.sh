#!/bin/sh
grim -g $(slurp) - | curl -F "file=@-;filename=.png" https://x0.at/ | tee >(wl-copy) >(xargs notify-send)
