#!/bin/bash

function setup {
  if [ ! -d "$BASE_DIR/posts" ]
  then
    mkdir "$BASE_DIR/posts"
  fi
}
