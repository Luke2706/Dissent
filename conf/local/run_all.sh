#!/bin/bash
rm -f *log


/home/dissent/Documents/BA/Dissent/build/dissent server0.conf &> /dev/null &
pids=$!
/home/dissent/Documents/BA/Dissent/build/dissent server1.conf &> /dev/null &
pids="$pids $!"
/home/dissent/Documents/BA/Dissent/build/dissent  server2.conf &> /dev/null &
pids=$"pids $!"
/home/dissent/Documents/BA/Dissent/build/dissent clients.conf

for pid in $pids; do
  echo $pid
  kill -KILL $pid
done
