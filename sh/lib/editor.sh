#!/bin/bash

function editor {
  local URI=$1
  eval $EDIT_CMD "$URI"
}
