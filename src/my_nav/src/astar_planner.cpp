#include "astar_planner.h"
#include<bits/stdc++.h>
using namespace std;
namespace astar_planner
{
    static pair<int, int> _start, _goal;
    static costmap_2d::Costmap2D *_costmap;

    // >>>调试??>>>
    ros::NodeHandle ph;
    // ros::Publisher point_pub = ph.advertise<geometry_msgs::PointStamped>("/point", 1, true);
    ros::Publisher pub = ph.advertise<nav_msgs::OccupancyGrid>("/gridMap", 1);
    // ros::Time current_time = ros::Time::now();
    // ros::Time last_time = ros::Time::now();

    nav_msgs::OccupancyGrid get_map()
    {
        nav_msgs::OccupancyGrid map;
        map.header.frame_id = "map";
        map.header.stamp = ros::Time::now();
        map.info.height = 1984;
        map.info.width = 1984;
        map.info.resolution = 0.05;
        map.info.origin.position.x = -50;
        map.info.origin.position.y = -50;
        map.info.origin.position.z = 0;
        map.info.origin.orientation.x = 0;
        map.info.origin.orientation.y = 0;
        map.info.origin.orientation.z = 0;
        map.info.origin.orientation.w = 1;
        return map;
    }

    nav_msgs::OccupancyGrid map = get_map();
    int p[1984*1984] = {-1};
    std::vector<signed char> a(p, p+1984*1984);

    void pubPoint(std::pair<int, int> point)
    {
        a[point.first*map.info.width+point.second] = 100;
        map.data = a;
        pub.publish(map);

        // double wx, wy;
        // double wz = 0.0;
        // _costmap->mapToWorld(point.first, point.second, wx, wy);

        // geometry_msgs::PoseStamped this_pose_stamped;
        // geometry_msgs::PointStamped this_point_stamped;

        // this_pose_stamped.pose.position.x = wx;
        // this_pose_stamped.pose.position.y = wy;
        // this_pose_stamped.pose.position.z = wz;

        // this_point_stamped.header.stamp = current_time;
        // this_point_stamped.header.frame_id = "map";
        // this_point_stamped.point.x = wx;
        // this_point_stamped.point.y = wy;
        // this_point_stamped.point.z = wz;

        // this_pose_stamped.header.stamp = current_time;
        // this_pose_stamped.header.frame_id = "map";

        // point_pub.publish(this_point_stamped);
    }
    // <<<调试??<<<
    struct Node{
        pair<int,int>position;
        long long h,g,priority;
        struct Node *parent;
        Node operator+ (pair<int, int> p)
        {
            Node n;
            n.position.first = this->position.first + p.first;
            n.position.second = this->position.second + p.second;
            if (p.first == 0 || p.second == 0)
                n.g = this->g + D;
            else
                n.g = this->g + D2; 
            long long h_diagonal = min(abs(n.position.first - _start.first),
                                abs(n.position.second - _start.second));
            long long h_straight = abs(n.position.first - _start.first) +
                            abs(n.position.second - _start.second);
            n.h = D2 * h_diagonal + D * (h_straight - 2 * h_diagonal);
            // n.h=1LL*D*abs(n.position.first-_goal.first)+abs(n.position.second-_goal.second);
            n.priority = n.g + n.h;
            // n.parent = this;
            return n;
        }
        // bool operator== (const Node& n) { return (this->position == n.position); }
        // bool operator<(const Node &a)const
        // {
        //     return this->priority>a.priority;
        // }
    };
struct CompareNode {
    bool operator()(Node* a, Node* b) {
        return a->priority > b  ->priority;
    }
};
    AStarPlanner::AStarPlanner() {}
    AStarPlanner::~AStarPlanner() {}
    bool AStarPlanner::plan(costmap_2d::Costmap2D* costmap,
                            const std::pair<int, int> start,
                            const std::pair<int, int> goal,
                            std::vector<std::pair<int, int>>& path)
    {
        ROS_INFO(" A Star: planning started... ");
        ROS_INFO_STREAM("get start:("<<std::to_string(start.first)<<","<<std::to_string(start.second)<<")"
                        <<"\tget goal:("<<std::to_string(goal.first)<<","<<std::to_string(goal.second)<<")");

        _start = start;
        _goal = goal;
        _costmap = costmap;
        final_path.clear();

        getPath();

        path.clear();
        if (!final_path.empty())
        {
            path.emplace_back(final_path[0]);
            // cout<<final_path[0].first<<","<<path[0].second<<";";
            for (int p = 1; p < final_path.size(); p++)
                if (final_path[p] != path.back())
                {
                    path.emplace_back(final_path[p]);
                    // cout<<final_path[p].first<<","<<final_path[p].second<<";";
                }
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
    // 检查指定坐标在地图中是否为障碍??
    bool AStarPlanner::collision(costmap_2d::Costmap2D* costmap, int mx, int my)
    {
        if ((mx >= costmap->getSizeInCellsX()) || (my >= costmap->getSizeInCellsY()))
            return true;
        if (costmap->getCost(mx, my) >= costmap_2d::INSCRIBED_INFLATED_OBSTACLE)
            return true;
        return false;
    }
    /*
    * 初始化open_set和close_set??
    * 将起点加入open_set中，并设置优先级??0（优先级最高）??
    * 如果open_set不为空，则从open_set中选取优先级最高的节点n??
        * 如果节点n为终点，则：
            * 从终点开始逐步追踪parent节点，一直达到起点；
            * 返回找到的结果路径，算法结束??
        * 如果节点n不是终点，则??
            * 将节点n从open_set中删除，并加入close_set中；
            * 遍历节点n所有的邻近节点??
                * 如果邻近节点m在close_set中，则：
                    * 跳过，选取下一个邻近节??
                * 如果邻近节点m也不在open_set中，则：
                    * 设置节点m的parent为节点n
                    * 计算节点m的优先级
                    * 将节点m加入open_set??
    */
    void AStarPlanner::getPath()
    {
        priority_queue<Node*,vector<Node*>,CompareNode> open_set,open_sett;
        priority_queue<Node*,vector<Node*>,CompareNode> close_set,close_sett;
        set<pair<int,int>>op,cl;
        op.clear();cl.clear();
        Node *s = new Node;
        s->position=_start;
        s->g=0.0;s->h=0.0;s->priority=0.0;
        open_set.push(s);
        op.insert(make_pair(s->position.first,s->position.second));
        Node *top_node=new Node;
        int cnt=0;
        while (open_set.size() > 0)
        {
            Node *top_node = open_set.top();
            open_set.pop();
            int pp = op.erase(make_pair(top_node->position.first,top_node->position.second));  
            cnt++;
            if ((top_node->position.first == _goal.first && top_node->position.second==_goal.second))
            {
                // cout<<"get goal"<<endl;
                while (top_node->position != _start)
                {
                    // cout<<"xy"<<" ";
                    top_node = top_node->parent;
                    // cout<<top_node->position.first<<" "<<top_node->position.second<<" "<<_goal.first<<" "<<_goal.second<<endl;
                    final_path.emplace_back(top_node->position);
                }
                std::reverse(final_path.begin(), final_path.end());
                op.clear();cl.clear();
                return;
            }
            else
            {
                // cout<<top_node->position.first<<","<<top_node->position.second<<endl;
                close_set.push(top_node);
                cl.insert(make_pair(top_node->position.first,top_node->position.second));
                for (const pair<int, int>* p = dir.begin(); p != dir.end(); p++)
                {
                    Node *n=new Node;
                    *n = *top_node + *p;//xy
                    int x=n->position.first,y=n->position.second;
                    // if (n->position.first<0 || n->position.first>1984 || n->position.second<0 || n->position.second>1984) continue;
                    n->parent=top_node;
                    if (collision(_costmap,x,y)) continue;
                    if (op.count(make_pair(n->position.first,n->position.second))==0 && cl.count(make_pair(n->position.first,n->position.second))==0)
                    {
                        op.insert(make_pair(n->position.first,n->position.second));
                        open_set.push(n);
                    }
                }
            }
        }
    }
}