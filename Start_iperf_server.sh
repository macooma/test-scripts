#!/bin/sh

if [ ! -d Logs ]; then
    mkdir Logs
fi

time=`date '+%Y-%m-%d_%H-%M-%S'`

stdbuf -oL iperf3 -s -i 1 | tee Logs/iperf_server_$time.log
