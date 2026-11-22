#!/bin/sh
clear
if [ -z "$TMUX" ]; then
    if tmux run 2>/dev/null; then
        SESSIONS=$(tmux list-sessions -F "#{session_name}")
    fi
    CHOICES="(new_session) $SESSIONS"
    SELECTION=$(gum choose --header "Pick tmux session" $CHOICES)
    if [ -z "${SELECTION}" ]; then
        clear
    else
        SESSION="$SELECTION"
        if [ "$SELECTION" = "(new_session)" ]; then
            while true; do
                SESSION=$(gum input --header "Enter a new session name")
                if ! printf '%s\n' "$SESSION" | LC_ALL=C grep -Eq '[^a-zA-Z0-9-]'; then
                    break
                fi
                echo "Session name can only contain letters, numbers, and dashes"
            done
        fi
        tmux -u new -As "${SESSION:-main}"
        exit 99
    fi
fi
