# dom_bearing
# Here, we want to rotate our point cloud in the real ground North orientation.
# first, find the center point (origin) of trajectory path i.e. the point from where we had started the scanning process. 
# second, during scanning time we fixed the 'Turning position', after that we move right direction. So, 
# here we can identify the line between origin and Turning point is North direction. 
# finally, we calculated the whole circle bearing (angle) of that line from the actual North position and 
# accordingly we rotate our plot.
