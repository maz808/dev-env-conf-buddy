clear
if [ -z "$TMUX" ]; then
    echo 'List of current tmux sessions:'
    ( tmux ls && echo -n "Select or create tmux session: " ) || ( clear ; echo -n "Create tmux session: " )
    read tmux_session
    tmux -u new -As "${tmux_session:-main}"
fi
