################################################################################
################################### QUESTION 1 #################################
################################################################################
# The FROM instruction specifies the Base Image from which you are building.
# The format is FROM <image>[:<tag>]
# Go to dockerhub.com and look for the ROS image and its available tags. Based
# on what you know about ROS, pick the right one.
FROM ros:noetic

# Ignore this for now
SHELL [ "/bin/bash", "-c" ]  

# CMD provides the default command to execute when starting a container
CMD bash