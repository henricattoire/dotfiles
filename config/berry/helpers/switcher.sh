#!/usr/bin/env bash
#
# Cycle to next window in list (disregarding workspaces).
#

ACTIVE=$(xprop -root _NET_ACTIVE_WINDOW | sed -e 's/.*# //')
WINDOWS=$(xprop -root _NET_CLIENT_LIST | sed -e 's/.*# //' | tr -d ' ')

NEXT=$(echo $WINDOWS | sed "s/^.*,\?$ACTIVE,\?\([^,]*\),\?.*$/\1/")
# If active window is last in the list, select the first window
[[ -z "$NEXT" ]] && NEXT=$(echo $WINDOWS | sed "s/^\([^,]*\),.*$/\1/")

xdotool windowactivate $NEXT
