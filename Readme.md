# Human-Centred Robotics 2024

This repository is intended for Imperial College students taking the Human Centred Robotics class with Pr. Demiris.

## Important notions
Some basic notions of Docker and ROS would be helpful to get you started. Most of these notions have been covered in the lectures and in today's presentation; if some of them are unclear, use the links below to refresh your memory,

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

### Stage 2 - Setting up your Catkin workspace
We are now going to build our own ROS package. To do this, we will use the `catkin tools`, which will need to be installed in the container.

 1) Take a look at the new commands in the `Makefile`.
 2) Let's see a first way to get the catkin tools inside the container:
    - Run `make build` and `make run`
    - Once you are in the container, run `apt update` and install the tools with `apt install python3-catkin-tools`. 
    - You can now create a package by running `catkin create pkg [NAME]` (see the documentation [here](https://catkin-tools.readthedocs.io/en/latest/)). 
    - By using `ls` and `cd`, navigate in the different files and folders. Make sure you understand their roles; ask if you don't.
    - Now, leave the container by using `CTRL-D`. Stop it with `make stop`
    - Run `make run` again. Where is your package? Can you create another one?
 3) Containers are designed to be temporary; you must be able to lose and restart them at any time. Any important change must happen in the image. Edit the `Dockerfile` to install the catkin tools in the image directl, and build the image again. Check that it worked.
 4) ROS packages need to be built, which can take a while. Let's review our options to solve this:
    - If you include the build process in your `Dockerfile`, building the docker image will take longer. Also, anyone with your image will get your code.
    - If you build packages from inside the container instead, you have to go through the lenghty build process every time you create a new container. 
    - To avoid those problems, we need to **mount** our workspace from the computer inside the container. 
    - Create a local workspace on you computer using `mkdir -p ros_ws/src/`.
    - Edit the `Makefile` to mount the `ros_ws` folder inside your container, at `/root/ros_ws/`.
    - From the container,  initialise a catkin workspace using `catkin init`, create a package in the `src` folder, and build the workspace using `catkin build`.

You now have a functional development environment. You can move on to stage3 using `git checkout stage3`. Don't forget to `git stash` your changes before.