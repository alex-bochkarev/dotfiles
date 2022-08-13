#!/bin/bash

# A shell script to modify the stock i3status with more indicators I need

i3status --config $HOME/.config/i3status/config | while :
do
    read line
    KB=$($HOME/ab-unixtools/getxkblayout/a.out)
    echo "[$KB] | $line" || exit 1
done
