#!/bin/bash

CONTAINER_NAME=cifs-docker
CIFS_PATH=//X.X.X.X/data
CIFS_USER=user
CIFS_PASS=pass
CIFS_MOUNT_DIR=/tmp/cifs
CIFS_SHARE_DIR=/tmp/win_share

docker run -d -v $CIFS_MOUNT_DIR:/tmp/coreos-tmp --name $CONTAINER_NAME brycekottke/$CONTAINER_NAME

ls -l $CIFS_SHARE_DIR

  if [ $? -eq "0" ]; then
    echo "$CIFS_SHARE_DIR already exist's"
      else
    echo "creating $CIFS_SHARE_DIR directory..."
    mkdir -p $CIFS_SHARE_DIR
  fi

echo "mounting cifs to $CIFS_PATH to $CIFS_SHARE_DIR"

  sudo $CIFS_MOUNT_DIR/mount.cifs $CIFS_PATH $CIFS_SHARE_DIR -o username=$CIFS_USER,password=$CIFS_PASS

  if [ $? -eq "0" ]; then
    echo "SUCCESSFULLY MOUNTED $CIFS_PATH TO $CIFS_SHARE_DIR"
      else
    echo "FAILED TO MOUNT $CIFS_PATH TO $CIFS_SHARE_DIR"
  fi 
