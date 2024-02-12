FROM ros:noetic

# Ignore this for now
SHELL [ "/bin/bash", "-c" ]  

RUN apt-get update && apt-get install -y python3-catkin-tools

# CMD provides the default command to execute when starting a container
CMD bash