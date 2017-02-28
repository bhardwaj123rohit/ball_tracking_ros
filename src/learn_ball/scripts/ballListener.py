#!/usr/bin/env python
import rospy
from learn_ball.msg import ballCor

def callback(data):
  rospy.loginfo("x: %d y: %d radius: %d" % (data.x, data.y,data.radius))
 
def listener():
  rospy.init_node('green_listener', anonymous=True)
  rospy.Subscriber("green_chatter", ballCor, callback)
 
     # spin() simply keeps python from exiting until this node is stopped
  rospy.spin()
 
if __name__ == '__main__':
  listener()
