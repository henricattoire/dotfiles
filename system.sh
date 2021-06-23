#!/usr/bin/env bash
#
# Execute system commands.
#
function usage() {
  echo "Syntax: $(basename $0) file group ..."
  exit 2
}

([[ $# -lt 2 ]] || [[ ! -f $1 ]]) && usage

FROM="$1" # File with system command groups.
shift

for ARG in "$@"; do
  while read rule; do
    COMMAND="$(echo "$rule" | xargs echo)" # remove trailing and leading whitespace
    echo "+ $COMMAND" && eval "$COMMAND"
  done < <(sed -n "/^sys_group $ARG$/,/^sys_group end$/p" $FROM | sed -e '1d;$d')
done
