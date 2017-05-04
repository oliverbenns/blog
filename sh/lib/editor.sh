#!/bin/bash

function editor {
  local URI=$1

  URI_ENCODED=$(printf %q "$URI")

  eval $EDIT_CMD "$URI_ENCODED"
}
