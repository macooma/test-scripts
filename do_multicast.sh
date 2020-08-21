#!/bin/bash

while true; do
    echo $1 $2
    vlc -I dummy rtsp://20.198.0.15/$1 --ttl=64 --sout '#duplicate{dst=udp{mux=ts,dst='$2'}}' vlc://quit
    sleep 2
done
