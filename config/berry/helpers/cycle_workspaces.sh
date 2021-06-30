#!/usr/bin/env bash
#
# Cycle through active workspaces.
#

CURRENT_DESKTOP=$(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}')
NUMBER_OF_DESKTOPS=$(xprop -root _NET_NUMBER_OF_DESKTOPS | awk '{print $3}')

i=1
while [[ $i -lt $NUMBER_OF_DESKTOPS ]]; do
  CANDIDATE=$(( ($CURRENT_DESKTOP + $i) % $NUMBER_OF_DESKTOPS ))
  [[ $(xdotool search --desktop $CANDIDATE '.*' | wc -l) -gt 0 ]] \
    && xdotool set_desktop $CANDIDATE && break
  ((i++))
done
