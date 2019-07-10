#!/bin/sh

Health=$(system_profiler SPPowerDataType | grep "Condition" | awk '{print $2}')
Cicles=$(system_profiler SPPowerDataType | grep "Cycle Count")
Condition=$(system_profiler SPPowerDataType | grep "Condition")

if [ "$Health" == "Normal" ];
then
  echo $Cicles
  echo $Condition
  exit 0
else
  echo $Cicles
  echo $Condition
  exit 1
fi
