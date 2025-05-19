#!/bin/bash

set -e

source /opt/ros/jazzy/setup.bash
source /ros2_ws/external/Arducam_tof_camera/ros2_publisher/install/setup.bash

export ROS_DOMAIN_ID=7

ros2 run arducam_rclpy_tof_pointcloud tof_pointcloud &

exec "$@"
