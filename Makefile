#TO CHANGE OS change this line
IMAGE=archlinux:latest

DOCKER_CONFIG=-it --rm
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

run:
	# /dev && /proc give errors so not synced
	@docker run \
		-v ${ROOT_DIR}/Volume/srv:/srv \
		-v ${ROOT_DIR}/Volume/sbin:/sbin \
		-v ${ROOT_DIR}/Volume/run:/run \
		-v ${ROOT_DIR}/Volume/root:/root \
		-v ${ROOT_DIR}/Volume/opt:/opt \
		-v ${ROOT_DIR}/Volume/media:/media \
		-v ${ROOT_DIR}/Volume/libx32:/libx32 \
		-v ${ROOT_DIR}/Volume/lib64:/lib64 \
		-v ${ROOT_DIR}/Volume/lib32:/lib32 \
		-v ${ROOT_DIR}/Volume/lib:/lib \
		-v ${ROOT_DIR}/Volume/home:/home \
		-v ${ROOT_DIR}/Volume/etc:/etc \
		-v ${ROOT_DIR}/Volume/boot:/boot \
		-v ${ROOT_DIR}/Volume/bin:/bin \
	${DOCKER_CONFIG} ${IMAGE}
