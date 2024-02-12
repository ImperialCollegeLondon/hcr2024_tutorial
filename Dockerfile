FROM ros:noetic

# Ignore this for now
SHELL [ "/bin/bash", "-c" ]  

# You can use the RUN instruction to execute any command on top of the current image as a new layer.
# Make sure that the command does not require user input, as it will not be possible to provide input during the build process.

# CMD provides the default command to execute when starting a container
CMD bash