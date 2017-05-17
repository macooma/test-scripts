#!/bin/sh

if [ $# != 1 ] ; then
    echo "Useage: `basename $0` <rtsp-url>"
    echo "    (where <rtsp-url> is a \"rtsp://\" URL)"
    exit 1;
fi

if [ ! -d Logs ]; then
    mkdir Logs
fi

time=`date '+%Y-%m-%d_%H-%M-%S'`

while [ 1 -eq 1 ]
do
    echo "Now is $time"
    Start_RTSPClient $1
    sleep 2
done
