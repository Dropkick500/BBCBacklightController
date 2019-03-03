#!/bin/bash
# Amix, my shortcut program to more easily run amixer stuff.
# Created for the same reason as BBC, lol
# If you have something besides alsamixer you can just go ahead and replace the amixer commands with your own.
echo "Q = Vol. Up"
echo "A = Vol. Down"
echo "M = Mute"
echo "E = Exit"
while true; do
read -rsn1 input
if [ "$input" = "q" ]; then
    amixer -q sset Master,0 1+ unmute
    echo "Up."
fi
if [ "$input" = "a" ]; then
    amixer -q sset Master,0 1- unmute
    echo "Down."
fi
if [ "$input" = "m" ]; then
    amixer -q sset Master,0 toggle
    echo "Muted."
fi
if [ "$input" = "e" ]; then
    exit 1
fi
if [ "$input" = "Q" ]; then             #Just in case you had caps lock, once again
    amixer -q sset Master,0 1+ unmute
    echo "Up."
fi
if [ "$input" = "A" ]; then
    amixer -q sset Master,0 1- unmute
    echo "Down."
fi
if [ "$input" = "M" ]; then
    amixer -q sset Master,0 toggle
    echo "Muted."
fi
if [ "$input" = "E" ]; then
    exit 1
fi
done