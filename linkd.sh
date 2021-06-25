#!/usr/bin/env bash
#
# Link dot.files.
#
function usage() {
  echo "Syntax: $(basename $0) target ..."
  exit 2
}

[[ $# -lt 1 ]] && usage

for ARG in "$@"; do
  mkdir -pv "$(dirname "$HOME/.$ARG")"
  ln -Tivs "$PWD/$ARG" "$HOME/.$ARG"
done
