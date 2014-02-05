#!/bin/bash
sudo plymouthd --tty=`tty` --mode=resume --debug --debug-file=/tmp/plymouth-debug-out
sudo plymouth --show-splash
for ((I=0;I<50;I++)); do 
  sleep 0.1
  sudo plymouth --update=event$I
done
sudo plymouth --quit
