#include "ros/ros.h"
#include "ball_chaser/DriveToTarget.h"
#include <sensor_msgs/Image.h>

// Define a global client that can request services
ros::ServiceClient client;

// This function calls the command_robot service to drive the robot in the specified direction
void drive_robot(float lin_x, float ang_z)
{
    // TODO: Request a service and pass the velocities to it to drive the robot
    ball_chaser::DriveToTarget srv;
    srv.request.linear_x = lin_x;
    srv.request.angular_z = ang_z;
    if (!client.call(srv)) {
        ROS_ERROR("Failed to call service command_robot");
    }
}

// This callback function continuously executes and reads the image data
void process_image_callback(const sensor_msgs::Image img)
{

    int white_pixel = 255;

    // TODO: Loop through each pixel in the image and check if there's a bright white one
    // Then, identify if this pixel falls in the left, mid, or right side of the image
    // Depending on the white ball position, call the drive_bot function and pass velocities to it
    // Request a stop when there's no white ball seen by the camera
    int pos = -1;
    for(size_t r=0; r< img.height; ++r) {
        for(size_t s=0; s<img.step; ++s) {
            if(img.data[r*img.step + s] == white_pixel) {
                pos = s;
                break;
            }
        }
    }

    int left_th = static_cast<int>(img.step * 1.0/3);
    int right_th = static_cast<int>(img.step * 2.0/3);

    if(pos == -1) {
        drive_robot(0, 0);
    }    
    else if(pos > -1 && pos < left_th) {
        ROS_INFO_STREAM("Turn Left");
        drive_robot(0, 0.2);
    }
    else if(pos > right_th) {
        ROS_INFO_STREAM("Turn Left");
        drive_robot(0, -0.1);
    }
    else {
        ROS_INFO_STREAM("Move forward");
        drive_robot(0.1, 0);
    }
}

int main(int argc, char** argv)
{
    // Initialize the process_image node and create a handle to it
    ros::init(argc, argv, "process_image");
    ros::NodeHandle n;

    // Define a client service capable of requesting services from command_robot
    client = n.serviceClient<ball_chaser::DriveToTarget>("/ball_chaser/command_robot");

    // Subscribe to /camera/rgb/image_raw topic to read the image data inside the process_image_callback function
    ros::Subscriber sub1 = n.subscribe("/camera/rgb/image_raw", 10, process_image_callback);

    // Handle ROS communication events
    ros::spin();

    return 0;
}