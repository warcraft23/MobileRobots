#ifndef TELECONTROLLER_H
#define TELECONTROLLER_H

#include "ros/ros.h"

class TeleController
{
public:
    TeleController();
    //virtual ~TeleController();
    void keyloop();

private:

      //ros::NodeHandle nh_();

      double linear_, angular_, l_scale_, a_scale_;
      ros::Publisher teleCtrlPublisher;

};

#endif // TELECONTROLLER_H
