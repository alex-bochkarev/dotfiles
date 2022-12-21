#!/bin/bash

echo "" | rofi -dmenu -l 0 -p "DDG" | xargs -I{} xdg-open https://duckduckgo.com/\?q\=\{\}
