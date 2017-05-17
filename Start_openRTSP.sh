#!/bin/sh

if [ $# != 1 ] ; then
    echo "Usage: `basename $0` <rtsp-url>"
    echo "    (where <rtsp-url> is a \"rtsp://\" URL)"
    exit 1;
fi

if [ ! -d Logs ]; then
    mkdir Logs
fi

time=`date '+%Y-%m-%d_%H-%M-%S'`

openRTSP -F "Video_$time." -t -b 10000000 $1
# -F specify a prefix for each output file name
# -b change the output file buffer size
# -t stream RTP/RTCP data over TCP, rather than
