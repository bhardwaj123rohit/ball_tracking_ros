#!/usr/bin/env python
import rospy
from learn_ball.msg import ballCor
from collections import deque
import numpy as np
import argparse
import imutils
import cv2
from picamera.array import PiRGBArray
from picamera import PiCamera
import time


#greenLower = (29,86,100)
#greenUpper = (60,255,255)

# RPI Cam Red
greenLower = (10,200,110)
greenUpper = (25,255,180)

pub = rospy.Publisher('pub_rpi_1', ballCor, queue_size=50)
msg = ballCor()

msg.heading="RPI-1 Initialized"
msg.color="RED - default"
msg.x = 0
msg.y = 0
msg.radius = 0
msg.upperH = greenUpper[0]
msg.upperS = greenUpper[1]
msg.upperV = greenUpper[2]
msg.lowerH = greenLower[0]
msg.lowerS = greenLower[0]
msg.lowerV = greenLower[0]
detected = False
def combine():
	rospy.init_node('rpi_1', anonymous=True)
	rospy.Subscriber("listen_rpi_1", ballCor, callback)
	# Initial Publishing
	rospy.loginfo("rpi_1 Initialized Default Color: RED")
	rospy.loginfo("rpi_1 searching for Ball "+msg.color)
	pub.publish(msg)
	talker()
	rospy.spin()

def callback(data):
  #rospy.loginfo("x: %d y: %d radius: %d UpperH %d UpperS %d UperV %d LowerH %d LowerS %d LowerV %d" % (data.x, data.y,data.radius,data.upperH,data.upperS,data.upperV,data.lowerH,data.lowerS,data.lowerV))
  rospy.loginfo("Node: %s ordered you to detect color: %s" % (data.heading,data.color))
  global msg
  rospy.loginfo("rpi_1 searching for Ball "+data.color)
  msg.heading=data.heading
  msg.color = data.color
  msg.upperH = data.upperH
  msg.upperS = data.upperS
  msg.upperV = data.upperV
  msg.lowerH = data.lowerH
  msg.lowerS = data.lowerS
  msg.lowerV = data.lowerV
  talker()


def talker():
	
	#rospy.init_node('green_talker_rpi', anonymous=True)
	#pub = rospy.Publisher('green_chatter_rpi', ballCor, queue_size=50)
	r = rospy.Rate(10) #10hz
	# Initialize the Green ball color 
	#greenLower = (29,86,100)
	#greenUpper = (60,255,255)

        global msg
	pts = deque(maxlen=64)


	#Grab webCam
	#camera = cv2.VideoCapture(0)
        camera = PiCamera()
        camera.resolution = (640, 480)
        camera.framerate = 62
        rawCapture = PiRGBArray(camera, size=(640, 480))
        time.sleep(0.1)
        
#       msg.heading="RPI-1 talker started"
#       msg.color="RED"
# 	msg.x = 0
#	msg.y = 0
#	msg.radius = 0
#	msg.upperH = greenUpper[0]
#	msg.upperS = greenUpper[1]
#       msg.upperV = greenUpper[2]
#	msg.lowerH = greenLower[0]
#	msg.lowerS = greenLower[0]
#	msg.lowerV = greenLower[0]
        global detected
        detected = False

        # keep looping
        for myframe in camera.capture_continuous(rawCapture, format="bgr", use_video_port=True):
                # grab the current frame
                #(grabbed, frame) = camera.read()
                frame = myframe.array
                
		# resize the frame, blur it, and convert it to the HSV
		# color space
		frame = imutils.resize(frame, width=600)
		# blurred = cv2.GaussianBlur(frame, (11, 11), 0)
		hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)

		# construct a mask for the color "green", then perform
		# a series of dilations and erosions to remove any small
		# blobs left in the mask
		mask = cv2.inRange(hsv, greenLower, greenUpper)
		mask = cv2.erode(mask, None, iterations=2)
		mask = cv2.dilate(mask, None, iterations=2)

		# find contours in the mask and initialize the current
		# (x, y) center of the ball
		cnts = cv2.findContours(mask.copy(), cv2.RETR_EXTERNAL,
			cv2.CHAIN_APPROX_SIMPLE)[-2]
		center = None

		# only proceed if at least one contour was found
		if len(cnts) > 0:
			# find the largest contour in the mask, then use
			# it to compute the minimum enclosing circle and
			# centroid
			c = max(cnts, key=cv2.contourArea)
			((x, y), radius) = cv2.minEnclosingCircle(c)
			M = cv2.moments(c)
			center = (int(M["m10"] / M["m00"]), int(M["m01"] / M["m00"]))
                        #rospy.loginfo(radius)

			# only proceed if the radius meets a minimum size
			if radius > 5:
				# draw the circle and centroid on the frame,
				# then update the list of tracked points
				cv2.circle(frame, (int(x), int(y)), int(radius),
					(0, 255, 255), 2)
				cv2.circle(frame, center, 5, (0, 0, 255), -1)
				msg.x=int(x)
				msg.y=int(y)
				msg.radius=int(radius)
				#rospy.loginfo(detected)
                                if detected == False:
                                        rospy.loginfo(" "+ msg.color+" ball detected ")
                                        detected = True
                                
				#detected = True
				
				        
                else:
                        #rospy.loginfo(detected)
                        if detected == True:
                                rospy.loginfo("Can't find the ball")
                                rospy.loginfo("Sending request to neighbours to find "+msg.color+" ball.")
                                #rospy.loginfo(msg)
                                pub.publish(msg)
                                detected = False
                                 
                                        
				#print "Publishing to Lap cam"
				#r.sleep()
				#return 0

		# update the points queue
		#pts.appendleft(center)

		# loop over the set of tracked points
		#for i in xrange(1, len(pts)):
			# if either of the tracked points are None, ignore
			# them
			#if pts[i - 1] is None or pts[i] is None:
			#	continue

			# otherwise, compute the thickness of the line and
			# draw the connecting lines
			#thickness = int(np.sqrt(64 / float(i + 1)) * 2.5)
			#cv2.line(frame, pts[i - 1], pts[i], (0, 0, 255), thickness)

		# show the frame to our screen
		#cv2.imshow("Frame", frame)
                rawCapture.truncate(0)
                
        	#rospy.loginfo(msg)
		#pub.publish(msg)
		#r.sleep()
	
if __name__ == '__main__':
	try:
		combine()
	except rospy.ROSInterruptException: 
		pass
