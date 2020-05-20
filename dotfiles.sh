#!/bin/sh
var=$(printf "i3-keys\ni3-start\ni3-theme\nkitty\nzsh\nvim" | rofi -dmenu -i -p "Dotfiles: " -theme themes/dmenu.rasi)


case $var in
    'i3-keys') 
	gvim ~/.config/i3/keybindings
	;;

    'i3-start') 
	gvim ~/.config/i3/autostart
	;;

    'i3-theme') 
	gvim ~/.config/i3/theme
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

