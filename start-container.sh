#!/bin/bash

CONTAINER_ID=<CONTAINER ID GOES HERE>
DATA_DIR=`pwd`/sample-data/
PORT_NUMBER=64738
SUPERUSER_PASSWORD=hunter2

docker run -d -p $PORT_NUMBER:64738 -p $PORT_NUMBER:64738/udp -v $DATA_DIR:/opt/mumble/ -e SUPERUSER_PASSWORD=$SUPERUSER_PASSWORD $CONTAINER_ID
