#!/bin/sh
var=$(echo "\n\n\n" | rofi -dmenu -i -p "❯" -theme themes/powermenu.rasi) 

case $var in
    '') 
	shutdown now;;
	

    '')
	$HOME/Scripts/i3lock-color/lock-pixelated.sh;;


    '')
	shutdown -r now;;

    
    '')
	i3-msg exit;;
esac
