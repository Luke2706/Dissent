#!/bin/bash
rm -f *log


/home/dissent/Documents/BA/Dissent/build/dissent test.conf &> /dev/null &
pids=$!

for pid in $pids; do
  echo $pid
  kill -KILL $pid
done
