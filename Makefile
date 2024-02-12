CONTAINER_NAME := hcrcont
TAG_NAME := imatag
IMAGE_NAME := hcrimg

stop:
	@docker stop ${CONTAINER_NAME} || true
	@docker rm ${CONTAINER_NAME} || true

build: stop
	@docker build --tag=${IMAGE_NAME}:${TAG_NAME} .

# Once you reach point 4, edit this command to mount your workspace.
run:	
	@docker run \
		-it \
		--name ${CONTAINER_NAME} \
		${IMAGE_NAME}:${TAG_NAME}

exec:
	@docker exec -it ${CONTAINER_NAME} /bin/bash
