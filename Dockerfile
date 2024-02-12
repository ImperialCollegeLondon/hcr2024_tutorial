FROM ros:noetic

# Ignore this for now
SHELL [ "/bin/bash", "-c" ]  

# You can use the RUN instruction to execute any command in a new layer on top of the current image and commit the results.
# Make sure that the command does not require user input, as it will not be possible to provide input during the build process.

# CMD provides the default command to execute when starting a container
CMD bash