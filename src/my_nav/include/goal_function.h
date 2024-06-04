#ifndef BASE_LOCAL_PLANNER_GOAL_FUNCTIONS_H_
 #define BASE_LOCAL_PLANNER_GOAL_FUNCTIONS_H_
  
 #include <ros/ros.h>
 #include <nav_msgs/Odometry.h>
 #include <nav_msgs/Path.h>
 #include <geometry_msgs/PoseStamped.h>
 #include <geometry_msgs/Twist.h>
 #include <geometry_msgs/Point.h>
 #include <tf2_ros/buffer.h>
  
 #include <string>
 #include <cmath>
  
 #include <angles/angles.h>
 #include <costmap_2d/costmap_2d.h>
  
 namespace base_local_planner {
  
   double getGoalPositionDistance(const geometry_msgs::PoseStamped& global_pose, double goal_x, double goal_y);
  
   double getGoalOrientationAngleDifference(const geometry_msgs::PoseStamped& global_pose, double goal_th);
  
   void publishPlan(const std::vector<geometry_msgs::PoseStamped>& path, const ros::Publisher& pub);
  
   void prunePlan(const geometry_msgs::PoseStamped& global_pose, std::vector<geometry_msgs::PoseStamped>& plan, std::vector<geometry_msgs::PoseStamped>& global_plan);
  
   bool transformGlobalPlan(const tf2_ros::Buffer& tf,
       const std::vector<geometry_msgs::PoseStamped>& global_plan,
       const geometry_msgs::PoseStamped& global_robot_pose,
       const costmap_2d::Costmap2D& costmap,
       const std::string& global_frame,
       std::vector<geometry_msgs::PoseStamped>& transformed_plan);
  
   bool getGoalPose(const tf2_ros::Buffer& tf,
       const std::vector<geometry_msgs::PoseStamped>& global_plan,
       const std::string& global_frame,
       geometry_msgs::PoseStamped &goal_pose);
  
   bool isGoalReached(const tf2_ros::Buffer& tf,
       const std::vector<geometry_msgs::PoseStamped>& global_plan,
       const costmap_2d::Costmap2D& costmap,
       const std::string& global_frame,
       geometry_msgs::PoseStamped& global_pose,
       const nav_msgs::Odometry& base_odom,
       double rot_stopped_vel, double trans_stopped_vel,
       double xy_goal_tolerance, double yaw_goal_tolerance);
  
   bool stopped(const nav_msgs::Odometry& base_odom, 
       const double& rot_stopped_velocity,
       const double& trans_stopped_velocity);
 };
 #endif