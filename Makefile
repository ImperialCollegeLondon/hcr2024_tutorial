################################################################################
################################### QUESTION 2 #################################
################################################################################
# Makefiles are traditionally used to help compile and link C++ programs.
# We used them as a convenient way to run the docker commands we need, since
# those can also get quite verbose.

# The syntax is simple:
# target: dependencies
# 	command

# In a terminal, make sure you are in the current folder (where the Makefile is),
# and run the command "make test2". Check the output:
# - why does "Test1" get printed before "Test2"?
# - what is the purpose of the @ symbol in the second command?

test1:
	echo "Test1"

test2: test1
	echo "Test2"
	@echo "Test2 again"


################################################################################
################################### QUESTION 3 #################################
################################################################################
# Take a look at the following commands. BEFORE RUNNING THEM, what do you think
# will happen?

my_var = "Another test?"

test3:
	@echo ${my_var}

test4: my_var = "Oof, it's finally over"
test4: test3

################################################################################
################################### QUESTION 4 #################################
################################################################################
# Let's move on to more useful commands. See if you can answer the questions.

CONTAINER_NAME = hcrlab
TAG_NAME = latest

# What are the || true for in the stop command?
stop:
	@docker stop ${CONTAINER_NAME} || true && docker rm ${CONTAINER_NAME} || true

build: stop
	@docker build --tag=myimg:${TAG_NAME} .

# Now, run an interactive container from the image you just built.