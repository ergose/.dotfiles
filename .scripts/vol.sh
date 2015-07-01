#!/bin/bash
amixer get Master | awk -F'[]%[]' '/%/ {if ($5 == "off") { print "mute" } else { print $2"%" }}' | tail -n 1
