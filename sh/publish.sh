#!/bin/bash

function publish {
  if [ ! -f "$POST_FILE" ]
  then
    echo "Post does not currently exist, did you mean [ create ] ?"
    exit 1
  fi

  echo "Publishing."

  # TODO
  # If no changes have been made (git diff)
  #   Post does not currently have changes, did you mean `post edit`?
  # exit 1

  # git add "$POST_FILE"
  # git commit -m "Add entry for ${date} / Edit entry for ${date}"
  # git push origin master
}
