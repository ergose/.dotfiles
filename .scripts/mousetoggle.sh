#!/usr/bin/env bash
#hide mouse

SERVICE='unclutter'
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
	notify-send "Normal" -a "Mouse" &
	pkill unclutter &
else 
	notify-send "Auto-Hide" -a "Mouse" &
	#unclutter -idle 1 -grab &
	unclutter -idle 1 -root -grab &
fi	   
