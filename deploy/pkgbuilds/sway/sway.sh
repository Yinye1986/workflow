#!/bin/bash

sudo cp -a /const/workflow/deploy/sway/sway-user-service /usr/bin
sudo cp -a /const/workflow/deploy/sway/sway-session-pre.target /usr/lib/systemd/user
sudo cp -a /const/workflow/deploy/sway/sway-session.target /usr/lib/systemd/user
sudo cp -a /const/workflow/deploy/sway/sway-session.desktop /usr/share/wayland-sessions
sudo cp -a /const/workflow/deploy/sway/sway.service /etc/systemd/user
sudo cp -a /const/workflow/deploy/sway/sway.service /usr/lib/systemd/user
sudo cp -a /const/workflow/deploy/sway/sway.service /etc/xdg/systemd/user
