#!/bin/sh
TEMPIMG=/tmp/lock.jpg
sleep .2
scrot $TEMPIMG && convert $TEMPIMG -scale 10% -scale 1000% $TEMPIMG

B='#2A5491ff'  # bar color
T='#c59820ff'  # text
W='#b02f30ff'  # wrong
V='#237986ff'  # verifying
$HOME/Scripts/i3lock-color/x86_64-pc-linux-gnu/i3lock \
--bar-indicator \
--bar-position 32 \
--bar-direction 1 \
--bar-max-height 32 \
--bar-base-width 32 \
--bar-periodic-step 50 \
--bar-step 50 \
--bar-width 250 \
--redraw-thread \
--clock \
--force-clock \
--date-align 1 \
--time-align 1 \
--statuspos 5:h-16 \
--modifpos -50:-50 \
--timepos 50:h-80 \
--datepos tx+5:ty+25 \
--timecolor $T \
--datecolor $T \
--verifcolor $V \
--wrongcolor $W \
--bar-color $B \
--keyhlcolor $T \
--ringvercolor $V \
--ringwrongcolor $W \
--time-font "Space Mono Nerd Font Bold" \
--screen 1 \
-i $TEMPIMG \

rm $TEMPIMG
