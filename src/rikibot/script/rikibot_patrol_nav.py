#!/usr/bin/env python
# -*- coding: UTF-8 -*-
import rospy
import actionlib
from actionlib_msgs.msg import *
from geometry_msgs.msg import Pose, Point, Quaternion
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal

class PatrolNav():

    def __init__(self):
        rospy.init_node('rikibot_patrol_nav_node', anonymous=False)
        rospy.on_shutdown(self.shutdown)

        #set navigation target pose
        location = [[9.186, 0.560, 0.000], [0.000, 0.000, 0.999, -0.043]]

        # Goal state return values
        goal_states = ['PENDING', 'ACTIVE', 'PREEMPTED', 'SUCCEEDED', 'ABORTED',
                       'REJECTED', 'PREEMPTING', 'RECALLING', 'RECALLED', 'LOST']

        # Subscribe to the move_base action server
        rospy.loginfo("Connecting to move base server ")
        self.move_base = actionlib.SimpleActionClient("move_base", MoveBaseAction)
        self.move_base.wait_for_server(rospy.Duration(30))

        rospy.loginfo("Starting position navigation ")
        while not rospy.is_shutdown():
            # Get the next location in the current sequence
            rospy.loginfo("Going to: " + f"Point:({",".join(location[0])}), Quaternion:({",".join(location[1])})")

            # Set up the next goal location
            goal = MoveBaseGoal()
            goal.target_pose.pose = Pose(Point(*location[0]), Quaternion(*location[1]))
            goal.target_pose.header.frame_id = 'map'
            goal.target_pose.header.stamp = rospy.Time.now()
            self.move_base.send_goal(goal) #send goal to move_base

            # Allow 5 minutes to get there
            finished_within_time = self.move_base.wait_for_result(rospy.Duration(300))

            # Check for success or failure
            if not finished_within_time:
                self.move_base.cancel_goal()
                rospy.logerr("ERROR:Timed out achieving goal, exit.")
            else:
                state = self.move_base.get_state()
                if state == GoalStatus.SUCCEEDED:
                    rospy.loginfo("Goal succeeded!")
                else:
                    rospy.logerr("Goal failed with error code:"+str(goal_states[state]))
            rospy.signal_shutdown('Quit')


    def trunc(self, f, n):
        # Truncates/pads a float f to n decimal places without rounding
        slen = len('%.*f' % (n, f))
        return float(str(f)[:slen])

    def shutdown(self):
        rospy.logwarn("Stopping the patrol...")

if __name__ == '__main__':
    try:
        PatrolNav()
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.logwarn("patrol navigation exception finished.")
