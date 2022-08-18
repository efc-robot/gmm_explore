// Generated by gencpp from file gmm_map_python/FeatureExtractionResponse.msg
// DO NOT EDIT!


#ifndef GMM_MAP_PYTHON_MESSAGE_FEATUREEXTRACTIONRESPONSE_H
#define GMM_MAP_PYTHON_MESSAGE_FEATUREEXTRACTIONRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/PointCloud2.h>

namespace gmm_map_python
{
template <class ContainerAllocator>
struct FeatureExtractionResponse_
{
  typedef FeatureExtractionResponse_<ContainerAllocator> Type;

  FeatureExtractionResponse_()
    : output_cloud()  {
    }
  FeatureExtractionResponse_(const ContainerAllocator& _alloc)
    : output_cloud(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _output_cloud_type;
  _output_cloud_type output_cloud;





  typedef boost::shared_ptr< ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct FeatureExtractionResponse_

typedef ::gmm_map_python::FeatureExtractionResponse_<std::allocator<void> > FeatureExtractionResponse;

typedef boost::shared_ptr< ::gmm_map_python::FeatureExtractionResponse > FeatureExtractionResponsePtr;
typedef boost::shared_ptr< ::gmm_map_python::FeatureExtractionResponse const> FeatureExtractionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator1> & lhs, const ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.output_cloud == rhs.output_cloud;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator1> & lhs, const ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gmm_map_python

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "95f1b4ae57180bb21e336889cfcfaf83";
  }

  static const char* value(const ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x95f1b4ae57180bb2ULL;
  static const uint64_t static_value2 = 0x1e336889cfcfaf83ULL;
};

template<class ContainerAllocator>
struct DataType< ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gmm_map_python/FeatureExtractionResponse";
  }

  static const char* value(const ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/PointCloud2 output_cloud\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointCloud2\n"
"# This message holds a collection of N-dimensional points, which may\n"
"# contain additional information such as normals, intensity, etc. The\n"
"# point data is stored as a binary blob, its layout described by the\n"
"# contents of the \"fields\" array.\n"
"\n"
"# The point cloud data may be organized 2d (image-like) or 1d\n"
"# (unordered). Point clouds organized as 2d images may be produced by\n"
"# camera depth sensors such as stereo or time-of-flight.\n"
"\n"
"# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n"
"# points).\n"
"Header header\n"
"\n"
"# 2D structure of the point cloud. If the cloud is unordered, height is\n"
"# 1 and width is the length of the point cloud.\n"
"uint32 height\n"
"uint32 width\n"
"\n"
"# Describes the channels and their layout in the binary data blob.\n"
"PointField[] fields\n"
"\n"
"bool    is_bigendian # Is this data bigendian?\n"
"uint32  point_step   # Length of a point in bytes\n"
"uint32  row_step     # Length of a row in bytes\n"
"uint8[] data         # Actual point data, size is (row_step*height)\n"
"\n"
"bool is_dense        # True if there are no invalid points\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointField\n"
"# This message holds the description of one point entry in the\n"
"# PointCloud2 message format.\n"
"uint8 INT8    = 1\n"
"uint8 UINT8   = 2\n"
"uint8 INT16   = 3\n"
"uint8 UINT16  = 4\n"
"uint8 INT32   = 5\n"
"uint8 UINT32  = 6\n"
"uint8 FLOAT32 = 7\n"
"uint8 FLOAT64 = 8\n"
"\n"
"string name      # Name of field\n"
"uint32 offset    # Offset from start of point struct\n"
"uint8  datatype  # Datatype enumeration, see above\n"
"uint32 count     # How many elements in the field\n"
;
  }

  static const char* value(const ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.output_cloud);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FeatureExtractionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gmm_map_python::FeatureExtractionResponse_<ContainerAllocator>& v)
  {
    s << indent << "output_cloud: ";
    s << std::endl;
    Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "  ", v.output_cloud);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GMM_MAP_PYTHON_MESSAGE_FEATUREEXTRACTIONRESPONSE_H
