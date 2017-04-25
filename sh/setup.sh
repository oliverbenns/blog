function setup {
  if [ ! -d "$BASE_DIR/posts" ]
  then
    mkdir "$BASE_DIR/posts"
  fi

  if [ ! -d "$BASE_DIR/tmp" ]
  then
    mkdir "$BASE_DIR/tmp"
  fi
  return 0
}
