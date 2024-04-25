#include "astar_planner.h"

namespace astar_planner
{
    Node::Node() {}
    Node::Node(std::pair<int, int> position): 
            position(position), start(position), h(0.0), g(0.0), priority(0.0), parent(nullptr) {}
    Node::~Node() {}
    Node Node::operator+ (const std::pair<int, int> p)
    {
        Node n;
        n.position.first = this->position.first + p.first;
        n.position.second = this->position.second + p.second;
        n.start = this->start;
        if (p.first == 0 || p.second == 0)
            n.g = this->g + D;
        else
            n.g = this->g + D2;
        double h_diagonal = std::min(std::abs(n.position.first - n.start.first), 
                                     std::abs(n.position.second - n.start.second));
        double h_straight = std::abs(n.position.first - n.start.first) + 
                            std::abs(n.position.second - n.start.second);
        n.h = D2 * h_diagonal + D * (h_straight - 2 * h_diagonal);
        n.priority = n.g + n.h;
        n.parent = this;
        return n;
    }
    

    NodeSet::NodeSet() {}
    NodeSet::~NodeSet() {}
    int NodeSet::size() { return static_cast<int>(_val.size()); }
    Node NodeSet::pop()
    {
        Node tmp = _val.front();
        _val.pop_front();
        return tmp;
    }
    void NodeSet::insert(Node n)
    {
        std::list<Node>::iterator p = _val.begin();

        if (size()==0)
        {
            _val.push_front(n);
            return;
        }

        for (int i = 0; i<size(); i++)
        {
            if (n.priority < p->priority)
            {
                _val.insert(p, n);
                return;
            }
            else
                p++;
        }

        _val.push_back(n);
        return;
    }
    bool NodeSet::exist(Node n)
    {
        std::list<Node>::iterator p = _val.begin();
        for (int i = 0; i<size(); i++)
        {
            if (n.priority > p->priority)
                return false;
            if (n.position == p->position)
                return true;
            p++;
        }
        return false;
    }


    AStarPlanner::AStarPlanner() {}
    AStarPlanner::~AStarPlanner() {}
    bool AStarPlanner::plan(costmap_2d::Costmap2D* costmap,
                            const std::pair<int, int> start, 
                            const std::pair<int, int> goal, 
                            std::vector<std::pair<int, int>>& path)
    {
        ROS_INFO(" A Star: planning started... ");

        _start = start;
        _goal = goal;
        final_path.clear();

        getPath();

        path.clear();
        if (!final_path.empty())
        {
            path.emplace_back(final_path[0]);

            for (int p = 1; p < final_path.size(); p++)
                if (final_path[p] != path.back())
                    path.emplace_back(final_path[p]);

            if(path.size() > 0)
            {
                ROS_INFO("A Star: planning successful");
                return true;
            }
            else
            {
                ROS_WARN("A Star: No viable path found");
                return false;
            }
        }
        else
        {
            ROS_WARN("A Star: No viable path found");
            return false;
        }

    }
    // 检查指定坐标在地图中是否为障碍物
    bool AStarPlanner::collision(costmap_2d::Costmap2D* costmap, int mx, int my)
    {
        if ((mx >= costmap->getSizeInCellsX()) || (my >= costmap->getSizeInCellsY()))
            return true;
        if (costmap->getCost(mx, my) >= costmap_2d::INSCRIBED_INFLATED_OBSTACLE)
            return true;
        return false;
    }
    void AStarPlanner::getPath()
    {
        /*
        * 初始化open_set和close_set；
        * 将起点加入open_set中，并设置优先级为0（优先级最高）；
        * 如果open_set不为空，则从open_set中选取优先级最高的节点n：
            * 如果节点n为终点，则：
                * 从终点开始逐步追踪parent节点，一直达到起点；
                * 返回找到的结果路径，算法结束；
            * 如果节点n不是终点，则：
                * 将节点n从open_set中删除，并加入close_set中；
                * 遍历节点n所有的邻近节点：
                    * 如果邻近节点m在close_set中，则：
                        * 跳过，选取下一个邻近节点
                    * 如果邻近节点m也不在open_set中，则：
                        * 设置节点m的parent为节点n
                        * 计算节点m的优先级
                        * 将节点m加入open_set中
        */
        NodeSet open_set, close_set;
        Node top_node;

        open_set.insert(Node(_start));
        if (open_set.size() > 0)
        {
            top_node = open_set.pop();
            if (top_node.position == _goal)
            {
                while (top_node.position != _start)
                {
                    final_path.emplace_back(top_node.position);
                    top_node = *top_node.parent;
                }
                final_path.emplace_back(top_node.position);
                std::reverse(final_path.begin(), final_path.end());
                return;
            }
            else
            {
                close_set.insert(top_node);
                const std::pair<int, int>* t = dir.begin();
                for (int i=0; i<dir.size(); i++)
                {
                    Node n = top_node + *t;
                    if (close_set.exist(n))
                        t++;
                    else if (!open_set.exist(n))
                    {
                        open_set.insert(n);
                        t++;
                    }
                }
            }
        }
    }
}