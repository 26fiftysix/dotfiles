#!/bin/bash

###Lock screen settings
#Clock widget
SCREEN_HEIGHT=$(xdpyinfo | awk -F '[ x]+' '/dimensions:/{print $4}')
X_POS=100 #central ring position, starts at the bottom-left corner
Y_POS=100
WIDTH=285 #semi-transparent box size
HEIGHT=100
CLOCK_OFFSET=135 #distance between indicator center position and clock center position
PADDING=25

#Ring color
NORMAL_COLOR=42717bff
HL_COLOR=7dc1cfff
BSHL_COLOR=e1aa5dff
WRONG_COLOR=e84f4fff
VER_COLOR=8542ffbf

#Text color
TIME_COLOR=ffffffff
DATE_COLOR=ddddddff

#Locking screen
x1=$[($X_POS+$CLOCK_OFFSET/2)-$WIDTH/2+$PADDING]
y1=$[$Y_POS-$HEIGHT/2]
x2=$[($X_POS+$CLOCK_OFFSET/2)+$WIDTH/2+$PADDING]
y2=$[$Y_POS+$HEIGHT/2]
i3lock \
	--screen 1 \
	--blur 5 \
	-k \
	--indicator \
	--ring-color=$NORMAL_COLOR \
	--keyhl-color=$HL_COLOR \
	--ringver-color=$VER_COLOR \
	--ringwrong-color=$WRONG_COLOR \
	--bshl-color=$BSHL_COLOR \
	--insidever-color=ffffff00   \
	--insidewrong-color=ffffff00 \
	--inside-color=ffffff00  \
	--radius=30 \
	--verif-text="" \
	--noinput-text="" \
	--wrong-text="" \
	--time-size=46 \
	--date-size=21 \
	--time-font="Google Sans Medium" \
	--date-font="Google Sans Medium" \
	--verif-font="Google Sans Medium" \
	--wrong-font="Google Sans Medium" \
	--ind-pos="x+$X_POS:y+h-$Y_POS" \
	--time-pos="ix+$CLOCK_OFFSET:iy" \
	--line-uses-inside \
	--separator-color=00000000 \
	--ring-width=10 \
	--time-color=$TIME_COLOR \
	--date-color=$DATE_COLOR \
	--date-str="%a, %Y-%m-%d"

