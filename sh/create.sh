#!/bin/bash

function create {
  if [ -f "$POST_FILE" ]
  then
    echo "Post already exists, did you mean [ edit ] ?"
    exit 1
  fi

  echo "Creating $POST_FILE"

  touch "$POST_FILE"
  editor "$POST_FILE"
}
