CONTAINER_NAME := hcrcont
TAG_NAME := imatag
IMAGE_NAME := hcrimg

stop:
	@docker stop ${CONTAINER_NAME} || true
	@docker rm ${CONTAINER_NAME} || true

build: stop
	@docker build --tag=${IMAGE_NAME}:${TAG_NAME} .

# Fill in the ROS_IP and ROS_MASTER_URI environment variables
run:	
	@xhost +si:localuser:root >> /dev/null
	@docker run \
		-e ROS_IP=          \
		-e ROS_MASTER_URI=          \
		-e DISPLAY \
		-v /dev:/dev \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-it \
		--privileged \
		--network host \
		--name ${CONTAINER_NAME} \
		${IMAGE_NAME}:${TAG_NAME}
	@docker stop ${CONTAINER_NAME} || true
	@docker rm ${CONTAINER_NAME} || true
