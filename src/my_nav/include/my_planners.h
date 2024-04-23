#ifndef MY_PLANNERS_H
#define MY_PLANNERS_H

#include <vector>
#include <algorithm>
#include <iostream>
#include <cmath>
#include <ros/ros.h>

namespace my_planners
{
    bool convert_a2b(std::vector<std::pair<double, double>> a, std::vector<std::pair<int, int>>& b);
    
    class AStarPlanner
    {
    public:
        AStarPlanner();
        ~AStarPlanner();
        bool plan(const std::pair<int, int>& start, const std::pair<int, int>& goal, std::vector<std::pair<int, int>>& path);
    };

}

#endif