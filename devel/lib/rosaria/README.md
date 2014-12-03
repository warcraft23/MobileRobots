程序功能介绍

1.AriaTransfer 用于转发RosAria节点之间的消息

2.RosAria 控制机器人的核心节点，运行后可接管机器人的控制，用MobileRobots公司的模拟器MobileSim的话，端口信息填,命令行里填_port:=127.0.0.1：8101，在launch文件里填<param name='~port' value='127.0.0.1:8101' />，每多一个机器人，8101这个端口号+1；用MobileRobots的机器人的时候，远端控制，即wifi控制，127.0.0.1:8101中的IP地址需要随实际改变，默认端口号为8101.

3.TeleCode 一个发布消息的节点，利用程序自动生成消息发送给RosAria节点

4.TeleController 一个通过键盘控制机器人的节点，通过键盘触发消息的发送

PS:以上3，4两个节点，当需要使用而不是配合src/rosaria/launch文件夹下的.launch文件来使用时，需要修改其对应源代码重新编译来使用，欢迎代价对程序进行修改
