#include <pluginlib/class_list_macros.h>
#include "global_planner.h"

// register this planner as a BaseGlobalPlanner plugin
PLUGINLIB_EXPORT_CLASS(global_planner::GlobalPlanner, nav_core::BaseGlobalPlanner)

// Default Constructor
namespace global_planner
{

    GlobalPlanner::GlobalPlanner() {}

    GlobalPlanner::GlobalPlanner(std::string name, costmap_2d::Costmap2DROS *costmap_ros){
        initialize(name, costmap_ros);
    }

    void GlobalPlanner::initialize(std::string name, costmap_2d::Costmap2DROS *costmap_ros){
        if (!initialized_)
        {
            // Initialize map
            costmap_ros_ = costmap_ros;
            costmap_ = costmap_ros->getCostmap();
            frame_id_ = costmap_ros->getGlobalFrameID();
            // get costmap properties
            width = costmap_->getSizeInCellsX(), height = costmap_->getSizeInCellsY();
            origin_x_ = costmap_->getOriginX(), origin_y_ = costmap_->getOriginY();
            resolution_ = costmap_->getResolution();

            ros::NodeHandle private_nh("~/" + name);
            plan_pub_ = private_nh.advertise<nav_msgs::Path>("my_plan", 1);

            ROS_INFO("custom global planner initialized successfully");
            initialized_ = true;
        }
        else
        {
            ROS_WARN("custom global planner has already been initialized");
        }
    }


    /**
     * @brief global planner 必需的接口，路径规划主体
     * @param start 起点 世界坐标
     * @param goal 终点 世界坐标
     * @param plan 输出的路径点 世界坐标
    **/
    bool GlobalPlanner::makePlan(const geometry_msgs::PoseStamped &start, 
                                 const geometry_msgs::PoseStamped &goal, 
                                 std::vector<geometry_msgs::PoseStamped> &plan){
        /*
        tips: 世界坐标转地图坐标 costmap_->worldToMap
              地图坐标转栅格索引 costmap_->getIndex
              栅格索引转地图坐标 costmap_->indexToCells
              地图坐标转世界坐标 costmap_->mapToWorld
        */
        
        if (!initialized_)
        {
            ROS_ERROR("please call initialize() before use");
            return false;
        }

        std::pair<int, int> start_node, goal_node;
        if (!process_coordinate(start, goal, start_node, goal_node))
            return false;

        int start_cell = this->costmap_->getIndex(start_node.first, start_node.second);
        int goal_cell = this->costmap_->getIndex(goal_node.first, goal_node.second);

        std::vector<std::pair<int, int>> path;
        plan.clear();

        // TODO: get path from my_planners

        // TODO: convert path to plan

    }

    // 检查输入坐标位置在地图中是否为障碍物
    bool GlobalPlanner::collision(double x, double y)
    {
        unsigned int mx,my;
        if(!this->costmap_->worldToMap(x,y,mx,my))
            return true;
        if ((mx >= costmap_->getSizeInCellsX()) || (my >= costmap_->getSizeInCellsY()))
            return true;
        if (costmap_->getCost(mx, my) >= costmap_2d::INSCRIBED_INFLATED_OBSTACLE)
            return true;
        return false;
    }

    // 检查输入坐标是否合法并将输入的世界坐标转换为地图坐标
    bool GlobalPlanner::process_coordinate(const geometry_msgs::PoseStamped &start, const geometry_msgs::PoseStamped &goal,
                                           std::pair<int, int> &start_node, std::pair<int, int> &goal_node)
    {
        unsigned int mx = 0, my = 0;
        
        if(this->collision(start.pose.position.x, start.pose.position.y))
        {
            ROS_WARN("failed to get a path.start point is obstacle.");
            return false;
        }
        else
        {
            this->costmap_->worldToMap(start.pose.position.x,start.pose.position.y,mx,my);
            start_node.first =static_cast<int>(mx);
            start_node.second=static_cast<int>(my);
        }

        if(this->collision(goal.pose.position.x, goal.pose.position.y))
        {
            ROS_WARN("failed to get a path.goal point is obstacle.");
            return false;
        }
        else
        {
            this->costmap_->worldToMap(goal.pose.position.x,goal.pose.position.y,mx,my);
            goal_node.first =static_cast<int>(mx);
            goal_node.second=static_cast<int>(my);
        }

        return true;
    }
};