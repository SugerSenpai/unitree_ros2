#!/bin/bash

# Install necessary ROS 2 packages
sudo apt install ros-humble-rmw-cyclonedds-cpp
sudo apt install ros-humble-rosidl-generator-dds-idl

# Change directory to the desired location
cd utils/unitree_ros2/cyclonedds_ws/src

# Clone rmw_cyclonedds
git clone https://github.com/ros2/rmw_cyclonedds -b humble

# Clone cyclonedds
git clone https://github.com/eclipse-cyclonedds/cyclonedds -b releases/0.10.x

# Move back to the parent directory
cd ..

# Build cyclonedds package
colcon build --packages-select cyclonedds

# Move back to the parent directory
cd ..

# Build the rest of the ROS 2 packages
colcon build
