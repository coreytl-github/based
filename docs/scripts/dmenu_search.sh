#!/bin/sh

. "${HOME}/.cache/wal/colors.sh"
MENGINE="https://duckduckgo.com/?q="
SEARCH=$(echo "" | dmenu -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -p "search")

PRE=$(echo "${SEARCH:2}" | cut -c1-2)

if [ "$PRE" = "d:" ]; then
  ENGINE="https://duckduckgo.com/?q="
  brave-browser-stable "${ENGINE}${SEARCH}" 2>/dev/null

elif [ "$PRE" = "g:" ]; then
  ENGINE="https://www.google.com/search?q="
  brave-browser-stable "${ENGINE}${SEARCH}" 2>/dev/null

elif [ "$PRE" = "q:" ]; then
  ENGINE="https://www.qwant.com/?q="
  brave-browser-stable "${ENGINE}${SEARCH}" 2>/dev/null

elif [ "$PRE" = "y:" ]; then
  ENGINE="https://www.youtube.com/results?search_query="
  brave-browser-stable "${ENGINE}${SEARCH}" 2>/dev/null

else
  brave-browser-stable "${MENGINE}${SEARCH}" 2> /dev/null

fi
