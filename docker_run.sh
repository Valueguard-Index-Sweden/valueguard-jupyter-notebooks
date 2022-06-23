#!/bin/bash

# Container config
VG_JUPYTER_CONTAINER_NAME="valueguard_jupyter_notebooks"
VG_JUPYTER_CONTAINER_TOKEN="iMw3pu9ERMWJEDmVOHWp9D" # CHANGE ME!
VG_JUPYTER_CONTAINER_PORT=1010

# Valueguard API config
VALUEGUARD_API_USERNAME="VALUEGUARD_API_USERNAME" # CHANGE ME!
VALUEGUARD_API_PASSWORD="VALUEGUARD_API_PASSWORD" # CHANGE ME!

# Dataservice config
DATASERVICE_USERNAME="DATASERVICE_USERNAME" # CHANGE ME!
DATASERVICE_PASSWORD="DATASERVICE_PASSWORD" # CHANGE ME!
DATASERVICE_DATA_USER="DATASERVICE_DATA_USER" # CHANGE ME!

docker stop $VG_JUPYTER_CONTAINER_NAME
docker rm $VG_JUPYTER_CONTAINER_NAME

docker run -d --name="$VG_JUPYTER_CONTAINER_NAME" -p$VG_JUPYTER_CONTAINER_PORT:8888 \
       -e JUPYTER_ENABLE_LAB=yes \
       -e JUPYTER_TOKEN="$VG_JUPYTER_CONTAINER_TOKEN" \
       -e VALUEGUARD_API_USERNAME="$VALUEGUARD_API_USERNAME" -e VALUEGUARD_API_PASSWORD="$VALUEGUARD_API_PASSWORD" \
       -e DATASERVICE_USERNAME="$DATASERVICE_USERNAME" -e DATASERVICE_PASSWORD="$DATASERVICE_PASSWORD" -e DATASERVICE_DATA_USER="$DATASERVICE_DATA_USER" \
       -v "$PWD/data":/home/jovyan/work \
       jupyter/datascience-notebook