// Generated by gencpp from file riki_msgs/FaceVoiceSetResponse.msg
// DO NOT EDIT!


#ifndef RIKI_MSGS_MESSAGE_FACEVOICESETRESPONSE_H
#define RIKI_MSGS_MESSAGE_FACEVOICESETRESPONSE_H


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
struct FaceVoiceSetResponse_
{
  typedef FaceVoiceSetResponse_<ContainerAllocator> Type;

  FaceVoiceSetResponse_()
    : face_id(false)
    , name()  {
    }
  FaceVoiceSetResponse_(const ContainerAllocator& _alloc)
    : face_id(false)
    , name(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _face_id_type;
  _face_id_type face_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> const> ConstPtr;

}; // struct FaceVoiceSetResponse_

typedef ::riki_msgs::FaceVoiceSetResponse_<std::allocator<void> > FaceVoiceSetResponse;

typedef boost::shared_ptr< ::riki_msgs::FaceVoiceSetResponse > FaceVoiceSetResponsePtr;
typedef boost::shared_ptr< ::riki_msgs::FaceVoiceSetResponse const> FaceVoiceSetResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator1> & lhs, const ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator2> & rhs)
{
  return lhs.face_id == rhs.face_id &&
    lhs.name == rhs.name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator1> & lhs, const ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace riki_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0287046282234b95fe7e07ac1a8feb81";
  }

  static const char* value(const ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0287046282234b95ULL;
  static const uint64_t static_value2 = 0xfe7e07ac1a8feb81ULL;
};

template<class ContainerAllocator>
struct DataType< ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "riki_msgs/FaceVoiceSetResponse";
  }

  static const char* value(const ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool face_id\n"
"string name\n"
"\n"
"\n"
;
  }

  static const char* value(const ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.face_id);
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FaceVoiceSetResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::riki_msgs::FaceVoiceSetResponse_<ContainerAllocator>& v)
  {
    s << indent << "face_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.face_id);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RIKI_MSGS_MESSAGE_FACEVOICESETRESPONSE_H
