#!/bin/bash

sudo plymouthd --tty=`tty` --mode=boot --debug --debug-file=/tmp/plymouth-debug-out
sudo plymouth --show-splash
for ((I=0;I<3;I++)); do
  sleep 0.5
  sudo plymouth --update=event$I
done
sudo plymouth pause-progress
sudo plymouth ask-question --prompt="Asking some type of a question"
sudo plymouth watch-keystroke --keys="cC " --command="tee /tmp/c_key_pressed"
sudo plymouth message --text="Resuming boot"
sudo plymouth unpause-progress

for ((I=4;I<10;I++)); do
  sleep 0.5
  sudo plymouth --update=event$I
done

sudo plymouth --quit
