#!/bin/bash

# change into bin directory
cd /home/opensim/opensim/bin

# Here we add checks for any dead screen sessions

DEADSCREENS=$(pstree -s -g opensim | grep screen | grep -v mono | cut -d'(' -s -f2 | cut -d')' -s -f1 | xargs echo )

# assign screens without mono running to array

array=( $DEADSCREENS  )

# iterate through array and kill selected screens
for i in "${array[@]}"
do
kill "${array[@]}"
done

# start detached names screen session for sim
screen -d -m -S simulator

#stuff opensim start command into running screen session
screen -r simulator -p 0 -X stuff "mono OpenSim.exe -hypergrid=true -inifile=\"./grid/simulator/OpenSim.ini\" -logconfig=\"./grid/simulator/OpenSim.exe.config\" -inidirectory=\"./grid/simulator\" $(printf '\r')"
