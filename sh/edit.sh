#!/bin/bash

function edit {
  if [ ! -f "$POST_FILE" ]
  then
    echo "Post does not currently exist, did you mean [ create ] ?"
    exit 1
  fi

  echo "Editing $POST_FILE"

  editor "$POST_FILE"
}
