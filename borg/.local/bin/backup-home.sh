#!/bin/env bash

export BORG_PASSCOMMAND="gpg -q -u aabochkaryov@gmail.com --batch --decrypt $HOME/.password-store/house/borg-workbox.gpg"

borg create \
     --stats \
     --verbose \
     --progress \
     --exclude-from $HOME/.config/borg-exclude \
     --exclude-caches \
     --compression zlib,5 \
     $1::"{hostname}-$2-{now:%Y-%m-%d}" \
     ~/

