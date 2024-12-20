#!/bin/bash

watch() {
	echo "watching: $(date)" #> ~/watchlog

	if  [[ -n "$(swaymsg -t get_version 1>/dev/null 2>tmp; cat tmp)" ]] then
		echo "!! Detected sway not responding !! Terminating ..." # >> ~/watchlog
		pkill -9 sway
		exit
	fi;	
}

sleep 4;
while true; do
	watch;
	sleep 4;
done
