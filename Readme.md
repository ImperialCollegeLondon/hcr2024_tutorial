# Human-Centred Robotics 2024

This repository is intended for Imperial College students taking the Human Centred Robotics class with Pr. Demiris. By the end of this tutorial, you will l

## Important notions
Some basic notions of Docker and ROS would be really helpful to get you started. Most of these notions have been covered in the lectures and in today's presentation; if some of them are unclear, use the links below to refresh your memory,

- Linux
  - [Environment variables](https://www.freecodecamp.org/news/how-to-set-an-environment-variable-in-linux/)
- [Docker](https://medium.com/swlh/understand-dockerfile-dd11746ed183)
  - Container
  - Image
  - Volumes
  - docker build, docker run, docker exec commands
- [ROS](https://roboticsbackend.com/what-is-a-ros-topic/)
  - Workspace
  - Package
  - Node
  - Topic
  - roscore, roslaunch, rosrun


## Tutorial
The purpose of this tutorial is to give you some hands-on practice. There are 3 main parts:
 1) 10 minutes presentation of the main concepts.
 2) Controlling a P3AT in simulation, by learning to use ROS, Docker, Makefiles and Gazebo.
 3) Controlling the real robot, for which you'll need to connect over SSH to the robot's laptop, set up your VNC server, and manage a multi-machine ROS network.

### Stage 1 - Setting up your environment
 1) Make sure your computer has `git` installed, and clone this repo using `git clone XXX`.
 2) Have a look at question 1 in `Dockerfile`
 3) Have a look at questions 2, 3 and 4 in `Makefile`
 4) Now that you have a container with ROS, start a `roscore`. Use `docker exec` to enter the same container from another terminal, and check the available topic. 

 Once this is done, you can move on to stage 2. Use `git stash` to make sure the git repo is in a clean state (`git status` should show no difference), and use `git checkout stage2` to move on.
