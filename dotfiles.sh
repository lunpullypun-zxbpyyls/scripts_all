#!/bin/sh
var=$(printf "i3\nkitty\nzsh\nvim" | rofi -dmenu -i -p "Dotfiles: " -theme themes/dmenu.rasi)


case $var in

    'i3-theme') 
	gvim ~/.config/i3/config
	;;

    'kitty')
        gvim ~/.config/kitty/kitty.conf
	;;

    'zsh')
	gvim ~/.zshrc
	;;

    'vim')
	gvim ~/.vimrc
	;;

esac

