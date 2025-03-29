#!/bin/bash

mkdir /mnt/esp
mkdir /mnt/const
mount /dev/nvme0n1p4 /mnt
mount /dev/nvme0n1p3 /mnt/const
mount /dev/nvme0n1p1 /mnt/esp
