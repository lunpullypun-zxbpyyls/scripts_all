#!/bin/sh
var=$(echo "\n\n\n\n" | rofi -dmenu -i -p "❯" -theme themes/card.rasi) 

case $var in
    '') 
	thunar;;
	

    '')
	firefox;;
	

    '')
	spotify;;
	

    '')
	obs;;
	

    '')
	lxappearance;;

esac
