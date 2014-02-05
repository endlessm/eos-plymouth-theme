#!/bin/bash
sudo plymouthd --tty=`tty` --mode=boot --debug --debug-file=/tmp/plymouth-debug-out
sudo plymouth --show-splash
for ((I=0;I<10;I++)); do 
  sleep 0.5 
  sudo plymouth --update=event$I
done
sudo plymouth --quit
