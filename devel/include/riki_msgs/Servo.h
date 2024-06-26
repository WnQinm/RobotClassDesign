// Generated by gencpp from file riki_msgs/Servo.msg
// DO NOT EDIT!


#ifndef RIKI_MSGS_MESSAGE_SERVO_H
#define RIKI_MSGS_MESSAGE_SERVO_H


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
struct Servo_
{
  typedef Servo_<ContainerAllocator> Type;

  Servo_()
    : Servo1(0)
    , Servo2(0)  {
    }
  Servo_(const ContainerAllocator& _alloc)
    : Servo1(0)
    , Servo2(0)  {
  (void)_alloc;
    }



   typedef int32_t _Servo1_type;
  _Servo1_type Servo1;

   typedef int32_t _Servo2_type;
  _Servo2_type Servo2;





  typedef boost::shared_ptr< ::riki_msgs::Servo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::riki_msgs::Servo_<ContainerAllocator> const> ConstPtr;

}; // struct Servo_

typedef ::riki_msgs::Servo_<std::allocator<void> > Servo;

typedef boost::shared_ptr< ::riki_msgs::Servo > ServoPtr;
typedef boost::shared_ptr< ::riki_msgs::Servo const> ServoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::riki_msgs::Servo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::riki_msgs::Servo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::riki_msgs::Servo_<ContainerAllocator1> & lhs, const ::riki_msgs::Servo_<ContainerAllocator2> & rhs)
{
  return lhs.Servo1 == rhs.Servo1 &&
    lhs.Servo2 == rhs.Servo2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::riki_msgs::Servo_<ContainerAllocator1> & lhs, const ::riki_msgs::Servo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace riki_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::riki_msgs::Servo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::riki_msgs::Servo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::riki_msgs::Servo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::riki_msgs::Servo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::riki_msgs::Servo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::riki_msgs::Servo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::riki_msgs::Servo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b1d39e7bb90536edb373b61068d04284";
  }

  static const char* value(const ::riki_msgs::Servo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb1d39e7bb90536edULL;
  static const uint64_t static_value2 = 0xb373b61068d04284ULL;
};

template<class ContainerAllocator>
struct DataType< ::riki_msgs::Servo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "riki_msgs/Servo";
  }

  static const char* value(const ::riki_msgs::Servo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::riki_msgs::Servo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 Servo1\n"
"int32 Servo2\n"
;
  }

  static const char* value(const ::riki_msgs::Servo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::riki_msgs::Servo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Servo1);
      stream.next(m.Servo2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Servo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::riki_msgs::Servo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::riki_msgs::Servo_<ContainerAllocator>& v)
  {
    s << indent << "Servo1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Servo1);
    s << indent << "Servo2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Servo2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RIKI_MSGS_MESSAGE_SERVO_H
