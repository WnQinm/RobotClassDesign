// Generated by gencpp from file riki_msgs/PID.msg
// DO NOT EDIT!


#ifndef RIKI_MSGS_MESSAGE_PID_H
#define RIKI_MSGS_MESSAGE_PID_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace riki_msgs
{
template <class ContainerAllocator>
struct PID_
{
  typedef PID_<ContainerAllocator> Type;

  PID_()
    : p(0.0)
    , d(0.0)
    , i(0.0)  {
    }
  PID_(const ContainerAllocator& _alloc)
    : p(0.0)
    , d(0.0)
    , i(0.0)  {
  (void)_alloc;
    }



   typedef float _p_type;
  _p_type p;

   typedef float _d_type;
  _d_type d;

   typedef float _i_type;
  _i_type i;





  typedef boost::shared_ptr< ::riki_msgs::PID_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::riki_msgs::PID_<ContainerAllocator> const> ConstPtr;

}; // struct PID_

typedef ::riki_msgs::PID_<std::allocator<void> > PID;

typedef boost::shared_ptr< ::riki_msgs::PID > PIDPtr;
typedef boost::shared_ptr< ::riki_msgs::PID const> PIDConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::riki_msgs::PID_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::riki_msgs::PID_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::riki_msgs::PID_<ContainerAllocator1> & lhs, const ::riki_msgs::PID_<ContainerAllocator2> & rhs)
{
  return lhs.p == rhs.p &&
    lhs.d == rhs.d &&
    lhs.i == rhs.i;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::riki_msgs::PID_<ContainerAllocator1> & lhs, const ::riki_msgs::PID_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace riki_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::riki_msgs::PID_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::riki_msgs::PID_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::riki_msgs::PID_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::riki_msgs::PID_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::riki_msgs::PID_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::riki_msgs::PID_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::riki_msgs::PID_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a559df187bdf63f426d5f304b6b28bb4";
  }

  static const char* value(const ::riki_msgs::PID_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa559df187bdf63f4ULL;
  static const uint64_t static_value2 = 0x26d5f304b6b28bb4ULL;
};

template<class ContainerAllocator>
struct DataType< ::riki_msgs::PID_<ContainerAllocator> >
{
  static const char* value()
  {
    return "riki_msgs/PID";
  }

  static const char* value(const ::riki_msgs::PID_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::riki_msgs::PID_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 p\n"
"float32 d\n"
"float32 i\n"
;
  }

  static const char* value(const ::riki_msgs::PID_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::riki_msgs::PID_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.p);
      stream.next(m.d);
      stream.next(m.i);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PID_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::riki_msgs::PID_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::riki_msgs::PID_<ContainerAllocator>& v)
  {
    s << indent << "p: ";
    Printer<float>::stream(s, indent + "  ", v.p);
    s << indent << "d: ";
    Printer<float>::stream(s, indent + "  ", v.d);
    s << indent << "i: ";
    Printer<float>::stream(s, indent + "  ", v.i);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RIKI_MSGS_MESSAGE_PID_H
