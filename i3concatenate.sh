#!/bin/sh
cat $(for filename in $(ls ~/.config/i3/ | grep -v config)
do
       	filename="$HOME/.config/i3/$filename "
	echo $filename
done) > ~/.config/i3/config
