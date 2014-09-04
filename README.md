#timelapse

#notes
This script capture every 10s a picture from the screen and webcam.

For the webcam snap the scirpt use sightsnap from monkeydom: https://github.com/monkeydom/sightsnap

##run
```
chmod u+x ./timelapse.sh
./timelapse.sh $NAME
```

##timelapse 
To make the timelapse i use tlassemble: https://github.com/dbridges/cocoa-tlassemble 

```
tlassemble ./screen timelapse_screen.mov -fps 10 -codec h264 -quality high
tlassemble ./webcam timelapse_webcam.mov -fps 10 -codec h264 -quality high
```