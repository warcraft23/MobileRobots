#ifndef ARIATRANSFER_H
#define ARIATRANSFER_H


#include "ros/ros.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/Twist.h"


class AriaTransfer
{
public:
    AriaTransfer();

private:
        //void posCallback(const nav_msgs::OdometryConstPtr &position);

        void twistCallback(const geometry_msgs::TwistConstPtr &twistMsg);
        ros::Publisher twist_pub_;
        ros::Subscriber position_sub_;
};

#endif // ARIATRANSFER_H
