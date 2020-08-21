#!/bin/bash

# https://brokenpipe.wordpress.com/2016/10/07/ffmpeg-h-264-constant-bitrate-cbr-encoding-for-iptv/

ffmpeg -i bbb_sunflower_2160p_60fps_normal.mp4 -r 60 -c:v libx264 -x264opts nal-hrd=cbr:force-cfr=1 -b:v 61440k -minrate 61440k -maxrate 61440k -bufsize 1024k output_60m.mkv
ffmpeg -i bbb_sunflower_2160p_60fps_normal.mp4 -r 60 -c:v libx264 -x264opts nal-hrd=cbr:force-cfr=1 -b:v 81920k -minrate 81920k -maxrate 81920k -bufsize 1366k output_80m.mkv
ffmpeg -i bbb_sunflower_2160p_60fps_normal.mp4 -r 60 -c:v libx264 -x264opts nal-hrd=cbr:force-cfr=1 -b:v 102400k -minrate 102400k -maxrate 102400k -bufsize 1708k output_100m.mkv
