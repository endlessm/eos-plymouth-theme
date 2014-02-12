#!/bin/bash

sudo plymouthd --tty=`tty` --mode=suspend --debug --debug-file=/tmp/plymouth-debug-out
sudo plymouth --show-splash
sleep 5
sudo plymouth --quit
