#!/bin/bash
xmodmap -e "clear lock"
xmodmap -e "keysym Caps_Lock = Mode_switch Mode_switch"
xmodmap -e "keysym k = k K Up Up"
xmodmap -e "keysym j = j J Down Down"
xmodmap -e "keysym h = h H Left Left"
xmodmap -e "keysym l = l L Right Right"
xmodmap -e "keysym 0 = 0 parenright Home Home"
xmodmap -e "keysym 4 = 4 dollar End End"
xmodmap -e "keysym u = u U Prior Prior"
xmodmap -e "keysym d = d D Next Next"

