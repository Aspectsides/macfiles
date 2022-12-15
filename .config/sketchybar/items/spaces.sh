#!/usr/bin/env sh

sketchybar --add   space          space_template left                \
           --set   space_template icon.color=0xffffffff              \
                                  label.drawing=off                  \
                                  drawing=off                      \
                                  updates=on                         \
                                  associated_display=1               \
                                  label.font="$FONT:Black:10.0"      \
                                  icon.font="Ubuntu:Bold:8.2"        \
                                  icon.padding_right=4               \
                                  icon.padding_left=4                \
                                  icon.y_offset=2                    \
                                  background.color=0xff4a4c5a        \
                                  icon.highlight_color=0xffffffff    \
                                  icon.background.height=3           \
                                  icon.background.color=0xffc85f70   \
                                  icon.background.y_offset=-10       \
                                  click_script="$SPACE_CLICK_SCRIPT" \
                                  ignore_association=on              \
                                                                     \
           --clone spaces_1.label label_template                     \
                                  associated_display=2               \
                                  label.width=20                     \
                                  label.align=center                 \
                                  position=left                      \
                                  drawing=on                         \
                                  script="$PLUGIN_DIR/space.sh"      \
                                                                     \
           --clone spaces_1.idle  space_template                     \
           --set   spaces_1.idle  associated_space=1                 \
                                  icon=WWW                           \
                                  drawing=on                         \
                                  script="$PLUGIN_DIR/space.sh"      \
                                                                     \
           --clone spaces_1.misc  space_template                     \
           --set   spaces_1.misc  associated_space=2                 \
                                  icon=DEV                           \
                                  drawing=on                         \
                                  script="$PLUGIN_DIR/space.sh"      \
                                                                     \
           --clone spaces_1.doc   space_template                     \
           --set   spaces_1.doc   associated_space=3                 \
                                  icon=SYS                           \
                                  drawing=on                         \
                                  script="$PLUGIN_DIR/space.sh"      \
                                                                     \
           --clone spaces_1.help  space_template                     \
           --set   spaces_1.help  associated_space=4                 \
                                  icon=DOC                           \
                                  drawing=on                         \
                                  script="$PLUGIN_DIR/space.sh"      \
                                                                     \
           --clone spaces_1.music space_template                     \
           --set   spaces_1.music associated_space=5                 \
                                  icon=VBOX                          \
                                  drawing=on                         \
                                  script="$PLUGIN_DIR/space.sh"      \
                                                                     \
           --clone spaces_2.nine  space_template                     \
           --set   spaces_2.nine  associated_space=6                 \
                                  icon=CHAT                          \
                                  drawing=on                         \
                                  script="$PLUGIN_DIR/space.sh"      \
                                                                     \
           --add   bracket        spaces_1                           \
                                  spaces_1.label                     \
                                  spaces_1.idle                      \
                                  spaces_1.misc                      \
                                  spaces_1.doc                       \
                                  spaces_1.help                      \
                                  spaces_1.music                     \
                                  spaces_1.nine                      \
                                                                     \
           --set   space_template associated_display=2               \
                                                                     \
           --clone spaces_2.label label_template                     \
                                  label.width=38                     \
                                  label.align=center                 \
                                  associated_display=1               \
                                  position=left                      \
                                  drawing=on                         \
                                                                     \
           --clone spaces_2.code  space_template                     \
           --set   spaces_2.code  associated_space=7                 \
                                  icon=MUS                           \
                                  drawing=on                         \
                                  script="$PLUGIN_DIR/space-top.sh"      \
                                                                     \
           --clone spaces_2.tex   space_template                     \
           --set   spaces_2.tex   associated_space=8                 \
                                  icon=VID                           \
                                  drawing=on                         \
                                  script="$PLUGIN_DIR/space-top.sh"      \
                                                                     \
           --clone spaces_2.web   space_template                     \
           --set   spaces_2.web   associated_space=9                 \
                                  icon=GFX                           \
                                  drawing=on                         \
                                  script="$PLUGIN_DIR/space-top.sh"      \
                                                                     \
           --add   bracket        spaces_2                           \
                                  spaces_2.label                     \
                                  spaces_2.code                      \
                                  spaces_2.web                       \
                                  spaces_2.tex                       \
                                  spaces_2.web                       \
