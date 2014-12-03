#include "ariatransfer.h"

AriaTransfer::AriaTransfer()
{
    ros::NodeHandle inputNH("input");
    ros::NodeHandle outputNH("output");

    position_sub_=inputNH.subscribe<geometry_msgs::Twist>("twist",10,&AriaTransfer::twistCallback,this);
    //position_sub_=inputNH.subscribe<nav_msgs::Odometry>("pose",1,&AriaTransfer::posCallback,this);
    twist_pub_=outputNH.advertise<geometry_msgs::Twist>("cmd_vel",10);


}



void AriaTransfer::twistCallback(const geometry_msgs::TwistConstPtr& twistMsg)
{
    geometry_msgs::Twist twist;
    twist.linear.x=twistMsg->linear.x;
    twist.angular.z=twistMsg->angular.z;
    twist_pub_.publish(twist);

}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "AriaTransfer");
  AriaTransfer transfer;

  ros::spin();
}
