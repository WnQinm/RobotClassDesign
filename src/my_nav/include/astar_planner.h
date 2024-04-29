#include <vector>
#include <list>
#include <array>
#include <algorithm>
#include <iostream>
#include <cmath>
#include <ros/ros.h>
#include <costmap_2d/costmap_2d_ros.h>
#include <costmap_2d/costmap_2d.h>

#ifndef ASTAR_PLANNER_H
#define ASTAR_PLANNER_H

using std::string;

namespace astar_planner
{
    const int D = 1;
    const double D2 = std::sqrt(2) * D;
    std::pair<int, int> _start;
    std::pair<int, int> _goal;

    const std::array<std::pair<int, int>, 8> dir
    {
        std::make_pair(-D,  D), std::make_pair(0,  D), std::make_pair(D,  D),
        std::make_pair(-D,  0),                        std::make_pair(D,  0),
        std::make_pair(-D, -D), std::make_pair(0, -D), std::make_pair(D, -D)
    };

    struct Node
    {
        Node();
        Node(std::pair<int, int> position);
        ~Node();
        Node operator+ (const std::pair<int, int> p);

        std::pair<int, int> position;
        double g, h;
        double priority;
        Node* parent;
    };

    class NodeSet
    {
    public:
        NodeSet();
        ~NodeSet();
        int size();
        Node pop();
        void insert(Node n);
        bool exist(Node n);
    private:
        // 升序排列
        std::list<Node> _val;
    };

    class AStarPlanner
    {
    public:
        AStarPlanner();
        ~AStarPlanner();
        bool plan(costmap_2d::Costmap2D* costmap,
                  const std::pair<int, int> _start,
                  const std::pair<int, int> _goal,
                  std::vector<std::pair<int, int>>& path);
    private:
        std::vector<std::pair<int, int>> final_path;
        void getPath();
        bool AStarPlanner::collision(costmap_2d::Costmap2D* costmap, int mx, int my);
    };
}

#endif