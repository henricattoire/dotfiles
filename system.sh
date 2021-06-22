#!/usr/bin/env bash
#
# Execute system commands.
#
function usage() {
  echo "Syntax: $(basename $0) file group ..."
  exit 2
}

FROM="$1" # File with system command groups.
shift

for ARG in "$@"; do
  while read rule; do
    COMMAND="$(echo "$rule" | xargs echo)"
    echo "+ $COMMAND" && eval "$COMMAND" # remove trailing and leading whitespace
  done < <(sed -n "/^sys_group $ARG$/,/^sys_group end$/p" $FROM | sed -e '1d;$d')
done
