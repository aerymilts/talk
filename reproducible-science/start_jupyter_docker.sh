#!/bin/bash
# run script in home directory of project

VERBOSE=0
BUILD=0

for arg in "$@"
do
    case $arg in
        -v)
        VERBOSE=1
        shift
    ;;
	-b)
	BUILD=1
	shift
    ;;
    esac
    IMAGE_NAME=${1}
    CONTAINER_NAME=${2:-ephemeral_container}
done

if [ $VERBOSE = 1 ]; then
    echo "***verbose mode***"
    echo "Image name: $IMAGE_NAME"
    echo "Container name: $CONTAINER_NAME"
    echo "******************"
fi

if [ $BUILD = 1 ]; then
    echo "building $IMAGE_NAME"
    docker build -t $IMAGE_NAME .
    exit 0
fi

if [ -z "$IMAGE_NAME" ]; then
    echo "\$IMAGE_NAME is missing"
    exit 1
fi

docker run -it --rm \
--name "$CONTAINER_NAME" \
-p 9999:8888 \
--env-file ./env.list \
-v $(pwd):/home/jovyan/work \
--user root \
"$IMAGE_NAME" \
start-notebook.sh --NotebookApp.token=''