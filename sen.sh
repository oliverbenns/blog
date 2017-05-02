#!/bin/bash

MODE=$1
BASE_DIR=$(dirname "$0")
DATE=`date +%Y-%m-%d`
YEAR=`date +%Y`
POST_FILE="$BASE_DIR/posts/$YEAR/$DATE.md"
EDIT_CMD="subl" # <- Change this to your own editor command!

# Tasks
source "$BASE_DIR/sh/setup.sh"
source "$BASE_DIR/sh/create.sh"
source "$BASE_DIR/sh/edit.sh"
source "$BASE_DIR/sh/publish.sh"

# Lib
source "$BASE_DIR/sh/lib/editor.sh"

setup

case $MODE in
  create)
    create
    ;;
  edit)
    edit
    ;;
  publish)
    publish
    ;;
  *)
    echo $"Command not found. Usage: [ create | edit | publish ]"
    exit 1
esac
