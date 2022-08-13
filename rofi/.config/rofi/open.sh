#!/usr/bin/env bash

if [ x"$@" = x"quit" ]; then
    exit 0
elif [ x"$@" = x"YouTube (youtube.com)" ]; then
     exec chromium --app=https://www.youtube.com
     exit 0
fi

echo "Translator (translate.google.com)"
echo "YouTube (youtube.com)"

echo "quit"
