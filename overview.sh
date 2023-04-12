#!/bin/bash
# Start a new tmux session with the name "my_session"
tmux new-session -s overview -d "top"

# Split the window vertically and start the "top" command in the first pane
tmux split-window -v -t overview:0 "journalctl -f"

#tmux new-window -n "sensors" -t overview "watch -n 20 sensors"
#tmux split-window -v -t overview:1'watch -n 60 "df -hT | grep -v tmpfs"'

# Attach to the tmux session
tmux attach-session -t overview
