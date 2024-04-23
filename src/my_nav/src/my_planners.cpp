#include "my_planners.h"

namespace my_planners
{
    AStarPlanner::AStarPlanner() {}
    AStarPlanner::~AStarPlanner() {}

    bool AStarPlanner::plan(const std::pair<int, int>& start, const std::pair<int, int>& goal, std::vector<std::pair<int, int>>& path)
    {
        std::cout<<" A Star: planning started... "<<std::endl;

        std::vector<std::pair<double, double>> final_path;
        std::pair<double, double> _start(static_cast<double>(start.first), static_cast<double>(start.second));
        std::pair<double, double> _goal(static_cast<double>(goal.first), static_cast<double>(goal.second));

        // TODO: generate path from start to goal and save in final_path


        if(!convert_a2b(final_path, path))
        {
            std::cout<<" A Star: planning successful "<<std::endl;
            return true;
        }
        else return false;
    }

    bool convert_a2b(std::vector<std::pair<double, double>> a, std::vector<std::pair<int, int>>& b)
    {
        b.clear();
        if (!a.empty())
        {
            b.emplace_back(static_cast<int>(a[0].first), static_cast<int>(a[0].second));

            for (int p = 1; p < a.size(); ++p)
            {
                int x = static_cast<int>(a[p].first);
                int y = static_cast<int>(a[p].second);
                if (x != b.back().first || y != b.back().second)
                    b.emplace_back(x, y);
            }
        }
    }
}