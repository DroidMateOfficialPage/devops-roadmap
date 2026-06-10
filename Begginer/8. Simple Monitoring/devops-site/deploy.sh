#!/bin/bash

DEST="/opt/homebrew/var/www"

echo "Deploying site..."
rsync -av ./ $DEST
echo "Done 🚀"
