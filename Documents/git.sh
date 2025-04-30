#!/bin/bash

for dir in */; do
  if [ -d "$dir/.git" ]; then
    echo "------------------------------------"
    echo "Git status for: $dir"
    echo "------------------------------------"
    (cd "$dir" && git status)
    echo
  else
    echo "$dir is not a Git repository."
  fi
done
