#!/bin/bash

SESSION_NAME="${1:-workspace}"

tmux has-session -t $SESSION_NAME 2>/dev/null

if [ $? != 0 ]; then
  tmux new-session -d -s $SESSION_NAME -n nvim 'nvim'
  tmux new-window -t $SESSION_NAME:2 -n git 'lazygit'
  tmux new-window -t $SESSION_NAME:3 -n dev
  tmux new-window -t $SESSION_NAME:4 -n console
fi

tmux select-window -t $SESSION_NAME:nvim
tmux attach -t $SESSION_NAME
