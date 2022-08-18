import rospy
from sensor_msgs.msg import PointCloud2

def callback(img):
    print("--------")
    print(img)

def main():
    rospy.init_node('test', anonymous=True)
    sub = rospy.Subscriber('camera/depth/points', PointCloud2, callback,queue_size=10)
    rospy.spin()

if __name__ == "__main__":
    main()