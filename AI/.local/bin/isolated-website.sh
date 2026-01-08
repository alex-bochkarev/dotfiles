#!/usr/bin/env bash

IWCONFDIR="$HOME/.config/per-website"

if [[ "$1" == "--help" || "$1" == "-h" || "$#" == "0" ]]; then
	echo "USAGE:"
	echo "	$0 <browser> <config-dir> <URL>"
	echo "where suppoerted browsers are:"
	echo " - qute (qutebrowser)"
    echo " - lw (LibreWolf)"
	echo " - chromium"
	echo " - chrome"
	exit 0
fi

if [ ! -d "$IWCONFDIR/$2" ]; then
    notify-send -u critical -t 1000 "Profile directory not found" "$IWCONFDIR/$2"
    exit 1
fi

if [ "$1" = "qute" ]; then
	echo "Starting qute in $IWCONFDIR/$2"
	qutebrowser -C ~/.config/qutebrowser/config.py --basedir "$IWCONFDIR/$2" "$3"
elif [ "$1" = "lw" ]; then
	librewolf --profile "$IWCONFDIR/$2" --new-instance --kiosk "$3"
elif [ "$1" = "chromium" ]; then
	chromium --user-data-dir="$IWCONFDIR/$2" --new-window --app="$3"
elif [ "$1" = "chrome" ]; then
	google-chrome --user-data-dir="$IWCONFDIR/$2" --new-window --app="$3"
else
    notify-send -u critical -t 1000 "Unknown browser option" "$1: unknown. Expected: qute, lw, chromium, or chrome"
fi
