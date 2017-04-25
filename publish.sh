#!/bin/bash

# DIRECTORY STRUCTURE
  # scripts
    # foo.sh
  # posts
    # 2017-04-25.md
    # 2017-04-26-a-slug-title-maybe.md
    # 2017-04-27.md
    # 2017-04-27-1.md
  # README.md
  # run.sh/publish.sh

BASE_DIR=$(dirname "$0")
DATE=`date +%Y-%m-%d`
EDITOR_BIN="/usr/local/bin/subl"
POST_FILE="$BASE_DIR/posts/$DATE.md"
TMP_FILE="$BASE_DIR/tmp/$DATE.md"

source "$BASE_DIR/sh/choice.sh"
source "$BASE_DIR/sh/setup.sh"

setup

if [ -f "$POST_FILE" ]
then
  # ('Edit Current', Abort) - pass in these
  choice EDIT_CURRENT "Post already exists for $DATE. Do you wish to edit the current?"
  echo $EDIT_CURRENT
  # TODO: Bash fns only return ints 0-255 so doing this hacky eval stuff. Make choice fn return an int? bool?
  if [ $EDIT_CURRENT == "Yes" ]
  then
    cp "$POST_FILE" "$TMP_FILE"
  else
    exit;
  fi
else
  touch "$TMP_FILE"
fi

# Open favourite editor ./tmp/date.md

# Prompt: Have you finished editing?
  # Yes
  # No

# Your post looks like this: *print markdown*. What do you want to do? - Publish - Edit - Discard
  # If discard
    # Are you sure you wish to discard? - Yes - No
    # If true
      # Delete ./tmp/date.md
  # If edit
    # Are you sure you wish to dis
  # If publish
    # mv ./tmp/date.md ./posts/date.md (force replace as checks already done)
    # rm -rf ./tmp/* - for safety
    # git add ./posts/date.md
    # git commit -m "Add entry for ${date} / Edit entry for ${date}"
    # git push origin master

