#! /bin/bash

WS=$1

i3-msg "workspace $WS; append_layout $WS.json"

case $WS in 
	1)
		kitty -1
		kitty -1 neofetch
		kitty -1 cmatrix
	;;

esac

