#!/bin/bash

adb start-server
adb connect 192.168.123.183:5555
scrcpy --no-video & disown
