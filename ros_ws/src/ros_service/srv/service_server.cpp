#include "ros/ros.h"
#include <sstream>
#include "ros_service/service.h"
#include <iostream>
#include "std_msgs/Int32.h"

using namespace std;

//inizializzazione vettore 

int fib[100];




bool service_callback ( ros_service::service::Request &req, ros_service::service::Response & res ){
int a,b,c;

    fib[0]=0;
    fib[1]=1;

int i;
for(i=0; i<99; i++){
	fib[2+i]= fib[1+i] + fib[0+i];
}

a=req.in1;
b=req.in2;

res.out[0]=a+b;
c=res.out[0];
ROS_INFO("%d",c);

return true;


}

int main(int argc, char **argv){
	
	ros::init (argc, argv, "service_server");
	ros::NodeHandle nh;
	ros::ServiceServer service = nh.advertiseService("service", service_callback);
	
	ROS_INFO("Attendendo il client");
	
	ros::spin();
	
	return 0;
}
