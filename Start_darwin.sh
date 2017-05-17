#!/bin/sh


if [ ! -f EasyDarwin ]; then
    echo "No EasyDarwin found !"
    exit 1
fi
if [ ! -f easydarwin.xml ]; then
    echo "No easydarwin.xml found !"
    exit 1
fi
if [ ! -f devices.xml ]; then
    echo "No devices.xml found !"
    exit 1
fi

if [ ! -d Logs ]; then
    mkdir Logs
fi

time=`date '+%Y-%m-%d_%H-%M-%S'`
./EasyDarwin -c easydarwin.xml -d | tee Logs/darwin_$time.log
