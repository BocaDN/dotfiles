#!/bin/bash
CURRENT_SESSION=$(tmux display-message -p '#S')

SESSIONS=$(tmux list-sessions -F "#{session_name} #{session_last_attached}" | sort -k2 -nr)

for line in $SESSIONS; do
  NAME=$(echo "$line" | awk '{print $1}')
  if [[ "$NAME" != "$CURRENT_SESSION" ]]; then
    tmux switch-client -n 
    tmux kill-session -t "$CURRENT_SESSION"
    exit
  fi
done
