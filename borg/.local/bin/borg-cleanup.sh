#!/bin/env bash

export BORG_PASSCOMMAND="gpg -q -u aabochkaryov@gmail.com --batch --decrypt $HOME/.password-store/house/borg-workbox.gpg"

echo "Removing the old archives according to the policy..."
borg prune --list --stats --keep-daily=2 --keep-weekly=4 $1 && echo "✅ done."

echo "Freeing up the space..."
borg compact --progress $1 && echo "✅ done."
