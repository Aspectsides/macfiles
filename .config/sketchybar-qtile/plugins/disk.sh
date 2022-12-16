#!/usr/bin/env sh

TOPPROC=$(TARGET_PATH="."
df -h "$TARGET_PATH"  | awk 'NR==2{print $4}'
)
sketchybar --set $NAME label="ssd: $TOPPROC free"
