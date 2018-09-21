#!/bin/bash
while true
do
var=$(sudo tmux capture-pane -pt "$target-pane" -S -1 | grep Speed | tail -n 1 | cut -d 'd' -f 2 | cut -d 'M' -f 1 )
#var=60
echo ' {"result": ["0", "0", " ' $var ' ;0;0"]}<' | netcat -lq1 3333
done
