#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include <std_msgs/String.h>
#include <iostream>


int main(int argc, char **argv){
 
 
	ros::init(argc, argv, "ros_eser1_publisher");
	ros::NodeHandle nh;
	
	ros::Publisher topic_pub = nh.advertise <std_msgs::String>("/parola",10);

	ros::Rate rate(10);
		
	while( ros::ok() ){
	
		std_msgs::String msg;
		
		std::cout<<"Inserisci parola"<<std::endl;
		std::cin>> msg.data;
		
		topic_pub.publish(msg);
		std::cout<<"parola inserita:"<<std::endl;
		
		rate.sleep();
	}
 
 

}
