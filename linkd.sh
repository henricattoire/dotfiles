#!/usr/bin/env bash
#
# Link dot.files.
#
for ARG in "$@"; do
  mkdir -pv "$(dirname "$HOME/.$ARG")"
  ln -Tivs "$PWD/$ARG" "$HOME/.$ARG"
done
