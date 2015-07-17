#!/bin/bash

export CIFS_SHARE=//X.X.X.X/Export/Conductor/data
export CIFS_USER=User
export CIFS_PASS=Pass

cifs_dir=/tmp/cifs
share=/tmp/win_share

ls -l $share

  if [ $? -eq 0 ]; then
    echo "$share already exist's"
      else
    echo "creating $share directory..."
    mkdir -p $share
  fi

ls -l $cifs_dir

  if [ $? -eq 0 ]; then
    echo "$cifs_dir already exist's"
      else
    echo "creating $cifs_dir directory..."
    mkdir -p $cifs_dir
  fi

ls -l $cifs_dir | grep "mount.cifs"

  if [ $? -eq 0 ]; then
    echo "mount.cifs already exist's"
      else
    echo "mounting cifs to $cifs_dir"
    sudo /tmp/cifs/mount.cifs $CIFS_SHARE $share -o username=$CIFS_USER,password=$CIFS_PASS
  fi
