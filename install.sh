#!/bin/bash

h=$(cd ~; pwd)

function link_fish {
	path="$h/.config/dotfiles/fish"
	cd $h/.config/fish
	ln -s $path/functions/sudo.fish functions/sudo.fish
	rm config.fish
	ln -s $path/config.fish config.fish
	rm fish_prompt.fish
	ln -s $path/fish_prompt.fish fish_prompt.fish
	rm fish_variables
	ln -s $path/fish_variables fish_variables
	source $h/.config/fish/fish_prompt.fish
	ls $path/install
	chmod +x $path/install
	$path/install
}

function link_kitty {
	path="$h/.config/dotfiles/kitty"
	cd $h/.config/kitty
	rm *
	ln -s $path/current_theme.conf current_theme.conf
	ln -s $path/kitty.conf kitty.conf
}

#link_fish
link_kitty
