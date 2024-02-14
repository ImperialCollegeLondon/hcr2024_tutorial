FROM ros:noetic

# Ignore this for now
SHELL [ "/bin/bash", "-c" ]  

RUN apt-get update && apt-get install -y python3-catkin-tools git

####################################################
# Clone the Aria-legacy repository and build it here
RUN 
####################################################

WORKDIR /root/ros_ws/
RUN mkdir src && source /opt/ros/noetic/setup.bash && catkin init

# Install the ROS dependancies (tf package in this case)
RUN apt install -y ros-noetic-tf ros-noetic-teleop-twist-keyboard

####################################################
# Clone the ROSARIA repository and build it here with catkin build
RUN 
####################################################

# CMD provides the default command to execute when starting a container
CMD bash
