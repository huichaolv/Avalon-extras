#!/bin/bash
[ -z "$BAR" ] && BAR="+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
while true; do
	cd /home/factory/Avalon-extras/scripts/factory
	bash -c "$*"
	echo -e $BAR
	sleep 3
done
