#!/bin/env bash

borg create \
     --stats \
     --verbose \
     --progress \
     --exclude-from $HOME/.config/borg-exclude \
     --exclude-caches \
     --compression zlib,5 \
     $1::"{hostname}-$2-{now:%Y-%m-%d}" \
     ~/

