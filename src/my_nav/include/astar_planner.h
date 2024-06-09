#include <vector>
#include <list>
#include <array>
#include <algorithm>
#include <iostream>
#include <cmath>
#include <ros/ros.h>
// #include <ros/time.h>
// #include <ros/duration.h>
#include <costmap_2d/costmap_2d_ros.h>
#include <costmap_2d/costmap_2d.h>

#include <nav_msgs/Path.h>
#include <geometry_msgs/PointStamped.h>
#include "nav_msgs/OccupancyGrid.h"

#ifndef ASTAR_PLANNER_H
#define ASTAR_PLANNER_H

using std::string;

namespace astar_planner
{
    void pubPoint(std::pair<int, int> point);

    const int D = 10;
    const int D2 = 14;

    const std::array<std::pair<int, int>, 8> dir
    {
        std::make_pair(-1,  1), std::make_pair(0,  1), std::make_pair(1,  1),
        std::make_pair(-1,  0),                        std::make_pair(1,  0),
        std::make_pair(-1, -1), std::make_pair(0, -1), std::make_pair(1, -1)
    };

    // struct Node
    // {
    //     Node();
    //     Node(std::pair<int, int> position);
    //     ~Node();
    //     Node operator+ (const std::pair<int, int> p);
    //     bool operator== (const Node& n);

    //     std::pair<int, int> position;
    //     double g, h;
    //     double priority;
    //     Node* parent;
    // };

    // class NodeSet
    // {
    // public:
    //     NodeSet();
    //     ~NodeSet();
    //     int size();
    //     Node pop();
    //     void insert(Node& n);
    //     bool exist(Node n);
    // private:
    //     // 升序排列
    //     std::list<Node> _val;
    // };

    class AStarPlanner
    {
    public:
        AStarPlanner();
        ~AStarPlanner();
        bool plan(costmap_2d::Costmap2D* costmap,
                  const std::pair<int, int> start,
                  const std::pair<int, int> goal,
                  std::vector<std::pair<int, int>>& path);
    private:
        std::vector<std::pair<int, int>> final_path;
        void getPath();
        bool collision(costmap_2d::Costmap2D* costmap, int mx, int my);
    };
}

#endif