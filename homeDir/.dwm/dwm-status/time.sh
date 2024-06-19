#!/bin/bash

while xsetroot -name "$(date +%H:%M)"; do
	sleep 1
done &
