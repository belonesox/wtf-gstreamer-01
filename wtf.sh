#!/bin/sh
gst-launch-1.0 -vvv multifilesrc location="%04d.png" index=1 caps="image/png,framerate=(fraction)24/1" ! pngdec ! videoconvert ! videoscale ! video/x-raw, width=640,height=480 ! videorate ! vp8enc ! webmmux ! filesink location=wtf.webm
ls -l wtf.webm
gst-launch-1.0 -vvv multifilesrc location="%04d.png" index=1 caps="image/png,framerate=(fraction)24/1" ! pngdec ! videoconvert ! videoscale ! video/x-raw, width=640,height=480 ! videorate ! x264enc ! avimux ! filesink location=wtf.avi
ls -l wtf.avi

