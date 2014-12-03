#include "telecontroller.h"
#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include <signal.h>
#include <stdio.h>
#include <termios.h>

using namespace std;


#define KEYCODE_R 0x43
#define KEYCODE_L 0x44
#define KEYCODE_U 0x41
#define KEYCODE_D 0x42
#define KEYCODE_Q 0x71

//Console file description
int kfd = 0;
struct termios cooked,raw;



TeleController::TeleController():
    linear_(0),angular_(0),l_scale_(4.0),a_scale_(1.0)
{
    //get the param from parameter server .If cannot , set the third argument as the default value
    ros::NodeHandle nh_("TeleController");
    nh_.param("scale_angular",a_scale_,a_scale_);
    nh_.param("scale_linear",l_scale_,l_scale_);

    // create the publisher
    // the length of the buffer is 1
    teleCtrlPublisher        =nh_.advertise<geometry_msgs::Twist>("/RosAria1/test/cmd_vel",1000);
}

void quit(int sig){
    tcsetattr (kfd,TCSANOW,&cooked);
    ros::shutdown ();
    exit(0);
}

void TeleController::keyloop (){
    char c;
    bool readyForPublish=false;

    //get the attribute of the console
    //then change it to raw mode
    tcgetattr (kfd,&cooked);
    memcpy(&raw,&cooked,sizeof(struct termios));

    raw.c_lflag&=~(ICANON|ECHO);//set ECHO&ICANON bit 0


    raw.c_cc[VEOL]=1;
    raw.c_cc[VEOF]=2;

    tcsetattr (kfd,TCSANOW,&raw);

    puts("Reading from keyboard");
    puts("--------------------------------");
    puts("Use arrow keys to move the robot.");

    while(true){
        //get the next event from the keyboard

        if(read(kfd,&c,1)<0){
            perror("read():");
            exit(-1);
        }
        linear_=angular_=0;
        ROS_DEBUG("Value: 0x%02X\n",c);

        switch(c){

            case KEYCODE_L:
                //turn left
                ROS_DEBUG("LEFT\n");
                puts("U press the left key");
                angular_=1.0;
                readyForPublish=true;
                break;


            case KEYCODE_R:
                //turn right
                ROS_DEBUG("RIGHT\n");
                puts("U press the right key");
                angular_=-1.0;
                readyForPublish=true;
                break;


            case KEYCODE_U:
                //go ahead
                ROS_DEBUG("UP\n");
                puts("U press the up key");
                linear_=0.1;
                readyForPublish=true;
                break;


            case KEYCODE_D:
                //go backward
                ROS_DEBUG("DOWN\n");
                puts("U press the down key");
                linear_=-0.1;
                readyForPublish=true;
                break;

            case KEYCODE_Q:
                //Quit
                ROS_DEBUG("QUIT\n");
                puts("U press the quit key");
                signal(SIGINT,quit);
                break;
        }
        geometry_msgs::Twist twist;
        twist.angular.z=a_scale_*angular_;
        //cout<<"The Angular is "<<twist.angular.z<<endl;
        twist.linear.x=l_scale_*linear_;
        //cout<<"The Linear is "<<twist.linear.x<<endl;

        if(readyForPublish==true){
            teleCtrlPublisher.publish(twist);
            //  puts("Publish Topic Success!");
            readyForPublish=false;
        }
    }


}

int main(int argc,char **argv){

    //ROS Initialize
    ros::init(argc, argv ,"TeleController");
    TeleController teleController;
    signal(SIGINT,quit);

    teleController.keyloop ();
    return(0);
}
