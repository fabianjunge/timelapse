#!/bin/bash
# This script capture every 10s a picture from the screen and webcam.
echo Name: $1

mkdir ./screen
mkdir ./webcam

while [ true ]; do
  name=$1
  prefix=$(date +%Y%m%d_)
  suffix=$(date +_%H%M%S)
  
  filename=${prefix}${name}${suffix}
  echo ${filename}
  screencapture -x -C -tjpg -T0 ./screen/${filename}.jpg
  sightsnap -d FaceTime\ HD\ Camera ./webcam/${filename}.jpg
  sleep 10
done