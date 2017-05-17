#!/bin/sh

server=172.16.100.198
duration=3600

if [ ! -d Logs ]; then
    mkdir Logs
fi

time=`date '+%Y-%m-%d_%H-%M-%S'`

stdbuf -oL iperf3 -c $server -i 1 -t $duration -P 16 | tee Logs/iperf_tcp_client_$time.log
