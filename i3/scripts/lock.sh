#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#2188ffcc'  # default
T='#0000ffee'  # text
W='#e100ffbb'  # wrong
V='#00ffffbb'  # verifying

i3lock \
--image=$HOME/.cache/i3lock/1920x1080 \
--insidever-color=$C   \
--ringver-color=$V     \
\
--insidewrong-color=$C \
--ringwrong-color=$W   \
\
--inside-color=$B      \
--ring-color=$D        \
--line-color=$B        \
--separator-color=$D   \
\
--verif-color=$T        \
--wrong-color=$T        \
--time-color=$T        \
--date-color=$T        \
--layout-color=$T      \
--keyhl-color=$W       \
--bshl-color=$W        \
\
--screen 1            \
--beep				 \
--clock               \
--indicator           \
--time-str="%H:%M:%S"  \
--date-str="%A, %m %Y" \
--greeter-text="寒江孤影,江湖故人,相逢何必曾相识"   \
--greeter-font="炫彩字体钻石爱心"    \
--greeter-size="35"    \
--keylayout 1         \
