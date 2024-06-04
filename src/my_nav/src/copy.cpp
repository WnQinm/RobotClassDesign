#include "astar_planner.h"
#include<bits/stdc++.h>
using namespace std;
namespace astar_planner
{
    static std::pair<int, int> _start, _goal;
    static costmap_2d::Costmap2D *_costmap;

    // >>>������>>>
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
    // <<<������<<<

    Node::Node() {}
    Node::Node(std::pair<int, int> position):
            position(position), h(0.0), g(0.0), priority(0.0), parent(nullptr) {}
    Node::~Node() {}
    Node Node::operator+ (const std::pair<int, int> p)
    {
        Node n;
        n.position.first = this->position.first + p.first;
        n.position.second = this->position.second + p.second;
        if (p.first == 0 || p.second == 0)
            n.g = this->g + D;
        else
            n.g = this->g + D2;
        double h_diagonal = std::min(std::abs(n.position.first - _start.first),
                                     std::abs(n.position.second - _start.second));
        double h_straight = std::abs(n.position.first - _start.first) +
                            std::abs(n.position.second - _start.second);
        n.h = D2 * h_diagonal + D * (h_straight - 2 * h_diagonal);
        n.priority = n.g + n.h;
        n.parent = this;//xy
        return n;
    }
 bool Node::operator== (const Node& n) { return (this->position == n.position); }


// struct Node{
//     Node *parent;
//     pair<int,int> position;
//     int g,h,priority;

//     Node operator+ (pair<int, int> p)
//     {
//         Node n;
//         n.position.first = this->position.first + p.first;
//         n.position.second = this->position.second + p.second;


//         if (p.first == 0 || p.second == 0)
//             n.g = this->g + D;
//         else
//             n.g = this->g + D2;

//         // pair<int, int> _start; 

//         double h_diagonal = min(abs(n.position.first - _start.first),
//                                 abs(n.position.second - _start.second));
//         double h_straight = abs(n.position.first - _start.first) +
//                             abs(n.position.second - _start.second);
//         n.h = D2 * h_diagonal + D * (h_straight - 2 * h_diagonal);
//         n.priority = n.g + n.h;
//         n.parent = this;
//         return n;
//     }

//     bool operator== (const Node& n) { return (this->position == n.position); }
// };
    


    NodeSet::NodeSet() {}
    NodeSet::~NodeSet() {}
    int NodeSet::size() { return static_cast<int>(_val.size()); }
    Node NodeSet::pop()
    {
        Node tmp = _val.front();
        _val.pop_front();
        return tmp;
    }
    void NodeSet::insert(Node& n)
    {
        if (size()==0)
        {
            _val.push_front(n);
            return;
        }

        for (std::list<Node>::iterator p = _val.begin(); p != _val.end(); p++)
        {
            if (n.priority < p->priority)
            {
                _val.insert(p, n);
                return;
            }
        }

        _val.push_back(n);
        return;
    }
    bool NodeSet::exist(Node n)
    {
        std::list<Node>::iterator it = std::find(_val.begin(), _val.end(), n);
        if (it != _val.end())
            return true;
        else
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
    // ���ָ�������ڵ�ͼ���Ƿ�Ϊ�ϰ���
    bool AStarPlanner::collision(costmap_2d::Costmap2D* costmap, int mx, int my)
    {
        if ((mx >= costmap->getSizeInCellsX()) || (my >= costmap->getSizeInCellsY()))
            return true;
        if (costmap->getCost(mx, my) >= costmap_2d::INSCRIBED_INFLATED_OBSTACLE)
            return true;
        return false;
    }
    /*
    * ��ʼ��open_set��close_set��
    * ��������open_set�У����������ȼ�Ϊ0�����ȼ���ߣ���
    * ���open_set��Ϊ�գ����open_set��ѡȡ���ȼ���ߵĽڵ�n��
        * ����ڵ�nΪ�յ㣬��
            * ���յ㿪ʼ��׷��parent�ڵ㣬һֱ�ﵽ��㣻
            * �����ҵ��Ľ��·�����㷨������
        * ����ڵ�n�����յ㣬��
            * ���ڵ�n��open_set��ɾ����������close_set�У�
            * �����ڵ�n���е��ڽ��ڵ㣺
                * ����ڽ��ڵ�m��close_set�У���
                    * ������ѡȡ��һ���ڽ��ڵ�
                * ����ڽ��ڵ�mҲ����open_set�У���
                    * ���ýڵ�m��parentΪ�ڵ�n
                    * ����ڵ�m�����ȼ�
                    * ���ڵ�m����open_set��
    */
    void AStarPlanner::getPath()
    {
        NodeSet open_set, close_set;
        Node s = Node(_start);
        open_set.insert(s);
        Node top_node=s;
        while (open_set.size() > 0)
        {
            top_node = open_set.pop();
            cout<<top_node.position.first<<" "<<top_node.position.second<<endl;
            if (top_node.position!=_start) 
            {
                cout<<top_node.parent->position.first<<" "<<top_node.parent->position.second<<endl;
            }
            if (top_node.position == _goal)
            {
                cout<<"get goal"<<endl;
                cout<<top_node.position.first<<" "<<top_node.position.second<<endl;
                cout<<top_node.parent->position.first<<" "<<top_node.parent->position.second<<endl;
                // puts("xy");
                while (top_node.position != _start)
                {
                    // Node pxy=top_node;
                    Node pnode = *top_node.parent;
                    // if (pxy.position.first==top_node.position.first && pxy.position.second==top_node.position.second) puts("xy");
                    // ROS_INFO_STREAM_ONCE(top_node.position.first<<","<<top_node.position.second<<";"<<
                    //                      top_node.parent->position.first<<","<<top_node.parent->position.second);
                    // pubPoint(top_node.position);
                    final_path.emplace_back(pnode.position);
                    top_node=pnode;
                }
                std::reverse(final_path.begin(), final_path.end());
                return;
            }
            else
            {
                close_set.insert(top_node);
                for (const std::pair<int, int>* p = dir.begin(); p != dir.end(); p++)
                {
                    Node n = top_node + *p;//xy
                    // n.parent = &top_node;
                    Node pnode=*n.parent;
                    // cout<<n.position.first<<","<<n.position.second<<";"<<
                    //     n.parent->position.first<<","<<n.parent->position.second<<endl;
                    cout<<n.position.first<<","<<n.position.second<<";"<<
                        pnode.position.first<<","<<pnode.position.second<<endl;
                    if (!close_set.exist(n) && !open_set.exist(n))
                        open_set.insert(n);
                    cout<<n.position.first<<","<<n.position.second<<";"<<
                        n.parent->position.first<<","<<n.parent->position.second<<endl;
                }
            }
        }
    }
}