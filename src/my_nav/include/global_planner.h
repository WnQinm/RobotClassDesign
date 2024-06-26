#include <ros/ros.h>
#include <costmap_2d/costmap_2d_ros.h>
#include <costmap_2d/costmap_2d.h>
#include <nav_core/base_global_planner.h>
#include <nav_msgs/Path.h>
#include <geometry_msgs/PoseStamped.h>
#include <angles/angles.h>
#include <base_local_planner/world_model.h>
#include <base_local_planner/costmap_model.h>
#include <tf/tf.h>
#include "astar_planner.h"
// #include"pso.h"

#ifndef GLOBAL_PLANNER_H
#define GLOBAL_PLANNER_H

namespace global_planner
{
    class GlobalPlanner : public nav_core::BaseGlobalPlanner
    {
    public:
        GlobalPlanner();
        GlobalPlanner(std::string name, costmap_2d::Costmap2DROS *costmap_ros);

        /** overridden classes from interface nav_core::BaseGlobalPlanner **/
        void initialize(std::string name, costmap_2d::Costmap2DROS *costmap_ros);
        bool makePlan(const geometry_msgs::PoseStamped &start,
                      const geometry_msgs::PoseStamped &goal,
                      std::vector<geometry_msgs::PoseStamped> &plan);

        /**
         * @brief Check if there is a collision.
         * @param x coordinate (cartesian system)
         * @param y coordinate (cartesian system)
         * @return True is the point collides and false otherwise
         */
        bool collision(double x, double y); //是否为障碍物

        bool process_coordinate(const geometry_msgs::PoseStamped &start,
                                const geometry_msgs::PoseStamped &goal,
                                std::pair<int, int> &start_node,
                                std::pair<int, int> &end_node);

    private:
        costmap_2d::Costmap2D* costmap_;
        unsigned int width, height;                      // costmap size
        double origin_x_, origin_y_;                     // costmap origin
        double resolution_;                              // costmap resolution
        ros::Publisher plan_pub_;
        std::string frame_id_;
        bool initialized_;

        astar_planner::AStarPlanner _planner;
        // pso_planner::PSOplanner _planner;
        geometry_msgs::PoseStamped create_pose(std::pair<int, int> map_coordinate, std::string frame_id, ros::Time stamp);
    };
};
#endif