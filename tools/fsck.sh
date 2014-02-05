#!/bin/bash
sudo plymouthd --tty=`tty` --mode=boot --debug --debug-file=/tmp/plymouth-debug-out
sudo plymouth --show-splash
for ((I=0;I<3;I++)); do 
  sleep 0.5 
  sudo plymouth --update=event$I
done

for ((I=0;I<100;I++)); do 
  sleep 0.01 
  sudo plymouth --update=fsck:sda1:$I
done

for ((I=4;I<10;I++)); do 
  sleep 0.2 
  sudo plymouth --update=event$I
done

sudo plymouth --quit
