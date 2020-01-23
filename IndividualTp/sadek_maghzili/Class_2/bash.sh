#!/bin/bash
roscore &
rosrun turtlesim turtlesim_node &
sleep 7

rosservice call /turtle1/set_pen '255' '255' '255' '2' 'off'

rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[2,0,0]' '[0,0,0]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[0,0,0]' '[0,0,1.57]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[2,0,0]' '[0,0,0]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[0,0,0]' '[0,0,1.57]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[2,0,0]' '[0,0,0]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[0,0,0]' '[0,0,1.57]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[2,0,0]' '[0,0,0]'
