#!/bin/sh

PINK='#ff79c680'
WHITE='#f8f8f2ff'
WHITETRANS='#f8f8f280'
TRANSPARENT='#00000000'
RED='#ff5555ff'
GREEN='#50fa7bff'
CYAN='#8be9fdff'
BLACK='#00000080'
BG='#00000099'

i3lock \
	--insidevercolor=$TRANSPARENT	\
	--ringvercolor=$CYAN		\
	\
	--insidewrongcolor=$TRANSPARENT	\
	--ringwrongcolor=$RED		\
	\
	--insidecolor=$TRANSPARENT	\
	--ringcolor=$WHITE	   	\
	--linecolor=$TRANSPARENT	\
	\
	--separatorcolor=$BLACK		\
	--keyhlcolor=$PINK		\
	--bshlcolor=$GREEN		\
	--verifcolor=$CYAN		\
	--wrongcolor=$RED	     	\
	--timecolor=$WHITE		\
	--datecolor=$WHITE		\
	--greetercolor=$WHITETRANS	\
	--ring-width="2"		\
	\
	--redraw-thread			\
	--bar-indicator			\
	--bar-color=$TRANSPARENT	\
	--bar-base-width="50"		\
	--bar-max-height="300"		\
	--bar-count="500"		\
	--bar-periodic-step="150"	\
	--bar-step="60"			\
	--bar-position="1080"	\
	--bar-direction="1"		\
	\
	--blur="5"			\
	--pass-volume-keys		\
	-e				\
	--screen 1            		\
	--color=$BG			\
	--clock               		\
	--indicator           		\
	--timestr="%I:%M %p"  		\
	--datestr="%B %d, %Y" 		\
	\
	--veriftext="Verifying..."		\
	--wrongtext="Wrong password!"		\
	--noinputtext="Empty input..."		\
	--greetertext="Logged in as: $USER"	\
	\
	--timepos="60 : 100"		\
	--greeterpos="1860 : 60"	\
	--indpos="60 : 100"		\
	--timesize="70"			\
	--datesize="20"			\
	--greetersize="25"		\
	--verifsize="40"		\
	--wrongsize="40"		\
	--time-align="1"		\
	--date-align="1"		\
	--wrong-align="1"		\
	--verif-align="1"		\
	--greeter-align="2"		\
\
