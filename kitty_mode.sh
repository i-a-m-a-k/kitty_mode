#!/bin/bash

# ASCII arts from: https://www.asciiart.eu/animals/cats

kitty_mode() {
	clear "$@"												# clear with whatever arguments are passed
	cat "./ascii_arts/$(ls ./ascii_arts | shuf -n 1)"       # print the ascii art
	printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' _ # fill line with `_`
}

# `clear` will use kitty mode
alias clear="kitty_mode"
# `Ctrl + L` will also use kitty mode
bind -x '"\C-l": kitty_mode -x'
