#!/bin/bash
# BBC Backlight Controller, or BBC for short
# A Backlight Controller Script, because my i3 hates really XF86 multimedia buttons
echo "Q = Brightness Up"
echo "A = Brightness Down"
echo "S = Set Own Value"
echo "E = Exit"
while true; do
read -rsn1 input
if [ "$input" = "q" ]; then
    xbacklight -inc 5
    echo "Current XBacklight Brightness:"
    xbacklight -get
fi
if [ "$input" = "a" ]; then
    xbacklight -dec 5
    echo "Current XBacklight Brightness:"
    xbacklight -get
fi
if [ "$input" = "s" ]; then
    echo "Type a Percentage for XBacklight to Use."
    read percentage
    xbacklight -set $percentage
    echo "Current XBacklight Brightness:"
    xbacklight -get
fi
if [ "$input" = "e" ]; then
    exit 1
fi
if [ "$input" = "Q" ]; then # Just in case you accidentally turned on caps lock
    xbacklight -inc 5
    echo "Current XBacklight Brightness:"
    xbacklight -get
fi
if [ "$input" = "A" ]; then
    xbacklight -dec 5
    echo "Current XBacklight Brightness:"
    xbacklight -get
fi
if [ "$input" = "S" ]; then
    echo "Type a Percentage for XBacklight to Use."
    read percentage
    xbacklight -set $percentage
    echo "Current XBacklight Brightness:"
    xbacklight -get
fi
if [ "$input" = "E" ]; then
    exit 1
fi
done
