#!/bin/bash
tmux new-session -d -n mining
tmux send-keys -t mining "cd /home/iikster/energiminer/

"



tmux send-keys -t mining "./start.sh


"

