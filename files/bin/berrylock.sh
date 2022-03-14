#!/usr/bin/env bash

## Copyright (C) 2020-2021 Aditya Shakya <adi1090x@gmail.com>
## Everyone is permitted to copy and distribute copies of this file under GNU-GPL3

## Get colors -----------------
FG="#EEEEEE"
BG="#011826"

pink="#D97E96"
magenta="#A36584"
purple="#635373"
blue="#496886"
slate="#152B42"
gray="#1A2133"

TOTD=`fortune -n 90 -s | head -n 1`

## Exec	-----------------
i3lock \
--color="${BG}D9"			\
\
--insidever-color=${blue}	\
--insidewrong-color=${pink}	\
--inside-color="${BG}00"	\
\
--ringver-color=${blue}	\
--ringwrong-color=${pink}	\
--ring-color=${purple}		\
\
--line-color=${BG}			\
--separator-color=${BG}		\
\
--keyhl-color=${magenta}		\
--bshl-color=${pink}			\
\
--verif-color=${BG}			\
--wrong-color=${FG}			\
--layout-color=${FG}		\
\
--time-color=${FG}			\
--date-color=${FG}			\
\
--pass-media-keys			\
--pass-screen-keys			\
--pass-power-keys			\
--pass-volume-keys			\
--{time,date,layout,verif,wrong,greeter}-font="JetBrains Mono Medium"			\
--{layout,verif,wrong,greeter}-size=18							\
--time-size=34													\
--date-size=18													\
--greeter-text="${TOTD}"			\
--greeter-color=${pink}				\
--verif-text="verifying..."			\
--wrong-text="wrong!"				\
--noinput-text="Empty"				\
--lock-text="Locking..."			\
--lockfailed-text="Failed to lock"	\
--radius 120				\
--ring-width 8.0			\
--screen 1					\
--clock						\
--indicator					\
--time-str="%I:%M %p"		\
--date-str="%b %d, %G"		\
#--blur 5					\
