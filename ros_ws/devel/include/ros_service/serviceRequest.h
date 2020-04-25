// Generated by gencpp from file ros_service/serviceRequest.msg
// DO NOT EDIT!


#ifndef ROS_SERVICE_MESSAGE_SERVICEREQUEST_H
#define ROS_SERVICE_MESSAGE_SERVICEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_service
{
template <class ContainerAllocator>
struct serviceRequest_
{
  typedef serviceRequest_<ContainerAllocator> Type;

  serviceRequest_()
    : in1(0)
    , in2(0)  {
    }
  serviceRequest_(const ContainerAllocator& _alloc)
    : in1(0)
    , in2(0)  {
  (void)_alloc;
    }



   typedef int32_t _in1_type;
  _in1_type in1;

   typedef int32_t _in2_type;
  _in2_type in2;





  typedef boost::shared_ptr< ::ros_service::serviceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_service::serviceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct serviceRequest_

typedef ::ros_service::serviceRequest_<std::allocator<void> > serviceRequest;

typedef boost::shared_ptr< ::ros_service::serviceRequest > serviceRequestPtr;
typedef boost::shared_ptr< ::ros_service::serviceRequest const> serviceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_service::serviceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_service::serviceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_service::serviceRequest_<ContainerAllocator1> & lhs, const ::ros_service::serviceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.in1 == rhs.in1 &&
    lhs.in2 == rhs.in2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_service::serviceRequest_<ContainerAllocator1> & lhs, const ::ros_service::serviceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_service

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ros_service::serviceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_service::serviceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_service::serviceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_service::serviceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_service::serviceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_service::serviceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_service::serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9fec3aad8d6d77ac394875705430388d";
  }

  static const char* value(const ::ros_service::serviceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9fec3aad8d6d77acULL;
  static const uint64_t static_value2 = 0x394875705430388dULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_service::serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_service/serviceRequest";
  }

  static const char* value(const ::ros_service::serviceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_service::serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 in1\n"
"int32 in2\n"
;
  }

  static const char* value(const ::ros_service::serviceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_service::serviceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.in1);
      stream.next(m.in2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct serviceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_service::serviceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_service::serviceRequest_<ContainerAllocator>& v)
  {
    s << indent << "in1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.in1);
    s << indent << "in2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.in2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SERVICE_MESSAGE_SERVICEREQUEST_H
