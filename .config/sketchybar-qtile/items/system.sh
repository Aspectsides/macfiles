#!/usr/bin/env sh

HAS_BATTERY=$(if [ "$(pmset -g batt | grep "Battery")" = "" ]; then echo "false"; else echo "true"; fi)
SVIM_POPUP_SCRIPT="sketchybar --set system.svim popup.drawing=off"

sketchybar --add       alias              "Control Center,WiFi" right                       \
           --set    "Control Center,WiFi" update_freq=1                                 \
                                          icon.drawing=off                              \
                                          label.drawing=off                             \
                                          background.padding_left=-8                    \
                                          background.padding_right=-11                   \

sketchybar --add       alias              "SoundSource" right                       \
           --set    "SoundSource" update_freq=1                                 \
                                          icon.drawing=off                              \
                                          label.drawing=off                             \
                                          background.padding_left=-7                    \
                                          background.padding_right=-6                   \

           --add       bracket            system                                        \
                                          system.svim                                   \
