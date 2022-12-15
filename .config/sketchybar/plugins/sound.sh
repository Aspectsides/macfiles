#!/usr/bin/env bash

VOLUME=$(osascript -e "get volume settings" | cut -d " " -d ":" -f2 | cut -d "," -f1)
MUTED=$(osascript -e "get volume settings" | grep "muted:true")

sketchybar -m \
--set $NAME label="vol:   $VOLUME%"
