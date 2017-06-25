#!/bin/bash

# change into bin directory
cd /home/opensim/opensim/bin

#start detached names screen session for sim
screen -d -m -S Robust

#stuff opensim  start command into running screen session
screen -r Robust -p 0 -X stuff "mono Robust.exe -inifile=\"Robust.HG.ini\" $(printf '\r')"

