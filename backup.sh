#!/bin/bash

SOURCE_DIR=""
REMOTE_USER=""
REMOTE_HOST=""
REMOTE_DIR=""

rsync -v -r --copy-links --delete -e ssh $SOURCE_DIR $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR
echo "backup done"
