roslaunch rikibot_gazebo bringup.launch
roslaunch rikibot_gazebo lidar_slam.launch 2> >(grep -v TF_REPEATED_DATA buffer_core)
roslaunch rikibot_gazebo navgation.launch 2> >(grep -v TF_REPEATED_DATA buffer_core)
