#!/bin/bash

adb start-server
adb connect 192.168.1.200:5555
scrcpy & disown
