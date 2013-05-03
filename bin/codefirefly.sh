#!/bin/sh

if tmux has-session -t firefly; then
  tmux -2 attach-session -d -t firefly
else
  cd ~/Work/firefly
  tmux new-session -d -s firefly

  tmux select-window -t firefly:0
  tmux split-window -t firefly:0
  tmux split-window -t firefly:0
  tmux set-window-option -t firefly:0 other-pane-width 80
  tmux select-layout -t firefly:0 main-vertical
  tmux select-pane -t firefly:0.0

  tmux -2 attach-session -t firefly
fi
