#!/bin/sh

if [ ! -d Logs ]; then
    mkdir Logs
fi

time=`date '+%Y-%m-%d_%H-%M-%S'`

ifstat -i enp0s31f6 -tnb | tee Logs/traffic_$time.trace
