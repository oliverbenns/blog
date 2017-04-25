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

# BASIC SUDO

# Get system date and format to yyyy-mm-dd.

# Check if ./posts/date.md already exists
  # If true
    # Prompt: Post already exists, what do you wish to do? - Edit Current - Abort
      # If edit current
        # cp ./posts/date.md ./tmp/date.md **is a tmp directory really needed?**
      # If abort
        # exit
  # If false
    # touch ./tmp/date.md

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

