#include "ros/ros.h"
#include <sstream>
#include "ros_service/service.h"
#include <iostream>
#include "std_msgs/Int32.h"

using namespace std;

int main(int argc, char **argv){

	ros::init(argc, argv, "service_client");
	ros::NodeHandle nh;
	ros::Rate loop_rate(10);
	
	ros::ServiceClient client = nh.serviceClient<ros_service::service> ("service");
	
	while (ros::ok()){
	
		ros_service::service srv;
		cout<<"Inserisci punto di partenza \n";
		cin>>srv.request.in1;
		srv.request.in2 = 4;
		
		if( client.call(srv)){
		
			ROS_INFO("Dal Client %d",srv.request.in1);
			for(int i=0; i < srv.request.in2;i++){
			ROS_INFO("Risposta del server %d",srv.response.out[i]);
			}
		}
		else{
			ROS_ERROR("Errore");
			return 1;
		}
		ros::spinOnce();
		loop_rate.sleep();
	}
	return 0;
}
