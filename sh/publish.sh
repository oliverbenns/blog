#!/bin/bash

function publish {
  if [ ! -f "$POST_FILE" ]
  then
    echo "Post does not currently exist, did you mean [ create ] ?"
    exit 1
  fi

  FILE_SIZE=$(wc -c < "$POST_FILE")

  if [ $FILE_SIZE == 0 ]; then
    echo "Post exists but has no content, did you mean [ edit ] ?"
    exit 1
  fi

  git add "$POST_FILE"

  GIT_STATUS="$(git status --porcelain $POST_FILE)"
  GIT_STATUS_CODE=${GIT_STATUS:0:1}

  case $GIT_STATUS_CODE in
    "A")
      git commit $POST_FILE -m "Publish ${POST_FILE}"
      ;;
    "M")
      git commit $POST_FILE -m "Edit ${POST_FILE}"
      ;;
    "")
      # Handle for if !file is at top of this script already.
      echo "No changes made to ${DATE} post. Did you mean [ edit ] ?"
      git reset "${POST_FILE}"
      exit 1
      ;;
    *)
      echo "Unexpected git status \"${GIT_STATUS_CODE}\""
      git reset "${POST_FILE}"
      exit 1
      ;;
    esac

  # What if there is no upstream?
  git push


  # TODO
  # If no changes have been made (git diff)
  #   Post does not currently have changes, did you mean `post edit`?
  # exit 1

  # git add "$POST_FILE"
  # git commit -m "Add entry for ${date} / Edit entry for ${date}"
  # git push origin master
}
