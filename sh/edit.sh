#!/bin/bash

function edit {
  local URI=$1
  eval $EDIT_CMD "$URI"
}
