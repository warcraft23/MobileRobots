#include "telecode.h"

#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"
#include <sstream>
#include <iostream>

#define MAX_VELOCITY_LINEAR 6
#define MAX_VELOCITY_ANGULAR 1
#define LATERAL_FACTOR 10
teleCode::teleCode()
{
}

int main(int argc,char **argv){
    ros::init(argc,argv,"rosaria_tele_code");
    ros::NodeHandle _nl;
    ros::Publisher code_publisher = _nl.advertise<geometry_msgs::Twist>("/RosAria1/test/cmd_vel",1000);

    ros::Rate loop_rate(10);
    int fwd_velocity=30;//forward velocity
    int rw_velocity=0;
    int ang_velocity=5;//positive angular
    int neg_ang_velocity=-5;//negative angular
    int bilibili=0.5;

    double vadd=-1.0;
    double wadd=0.0;
//    interval
    double interval=0.04;


    bool dogge=true;
    int count=0;
    while(ros::ok ()){
        geometry_msgs::Twist twist_msg;

        if(dogge==true){
            vadd+=interval;
            if(vadd>=1){
                dogge=false;
            }
        }
        if(dogge==false){
            vadd-=interval;
            if(vadd<=-1){
                dogge=true;
            }
        }

        //twist_msg.linear.x=fwd_velocity*bilibili;
        twist_msg.linear.x=1;
        if(dogge)
        {
            twist_msg.angular.z=ang_velocity;
            ROS_INFO("linear :%f,angluar: %d",twist_msg.linear.x,twist_msg.angular.z);
        }
        else{
            twist_msg.angular.z=neg_ang_velocity;
            ROS_INFO("linear :%f,angluar: %d",twist_msg.linear.x,twist_msg.angular.z);
        }
        //twist_msg.angular.z=0;


        code_publisher.publish(twist_msg);
        ros::spinOnce ();
        loop_rate.sleep ();
        ++count;



    }
    return 0;
}

