// Generated by gencpp from file riki_msgs/Pose.msg
// DO NOT EDIT!


#ifndef RIKI_MSGS_MESSAGE_POSE_H
#define RIKI_MSGS_MESSAGE_POSE_H

#include <ros/service_traits.h>


#include <riki_msgs/PoseRequest.h>
#include <riki_msgs/PoseResponse.h>


namespace riki_msgs
{

struct Pose
{

typedef PoseRequest Request;
typedef PoseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Pose
} // namespace riki_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::riki_msgs::Pose > {
  static const char* value()
  {
    return "c4258fd17a5d5267d5a22ad00faa1382";
  }

  static const char* value(const ::riki_msgs::Pose&) { return value(); }
};

template<>
struct DataType< ::riki_msgs::Pose > {
  static const char* value()
  {
    return "riki_msgs/Pose";
  }

  static const char* value(const ::riki_msgs::Pose&) { return value(); }
};


// service_traits::MD5Sum< ::riki_msgs::PoseRequest> should match
// service_traits::MD5Sum< ::riki_msgs::Pose >
template<>
struct MD5Sum< ::riki_msgs::PoseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::riki_msgs::Pose >::value();
  }
  static const char* value(const ::riki_msgs::PoseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::riki_msgs::PoseRequest> should match
// service_traits::DataType< ::riki_msgs::Pose >
template<>
struct DataType< ::riki_msgs::PoseRequest>
{
  static const char* value()
  {
    return DataType< ::riki_msgs::Pose >::value();
  }
  static const char* value(const ::riki_msgs::PoseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::riki_msgs::PoseResponse> should match
// service_traits::MD5Sum< ::riki_msgs::Pose >
template<>
struct MD5Sum< ::riki_msgs::PoseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::riki_msgs::Pose >::value();
  }
  static const char* value(const ::riki_msgs::PoseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::riki_msgs::PoseResponse> should match
// service_traits::DataType< ::riki_msgs::Pose >
template<>
struct DataType< ::riki_msgs::PoseResponse>
{
  static const char* value()
  {
    return DataType< ::riki_msgs::Pose >::value();
  }
  static const char* value(const ::riki_msgs::PoseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RIKI_MSGS_MESSAGE_POSE_H
