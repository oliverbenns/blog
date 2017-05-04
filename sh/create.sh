#!/bin/bash

function create {
  if [ -f "$POST_FILE" ]
  then
    echo "Post already exists, did you mean [ edit ] ?"
    exit 1
  fi

  touch "$POST_FILE"

  if [ "$TITLE" ]
  then
    echo "# $TITLE" > "$POST_FILE"
  fi

  editor "$POST_FILE"
}
