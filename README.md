###cifs-docker

#####1. Get mount.cifs onto your CoreOS Instance:
  ```
  $ git clone https://github.com/brycekottke/cifs-docker.git

  ```


#####2. Modify the mount.sh script with your CIFS PATH, USER, and PASS. Example:

  ```
  $ vi mount.sh
      CIFS_PATH=//10.0.1.120/data
      CIFS_USER=username
      CIFS_PASS=password
  ```
######Note: You can also change the directory the container will copy 'mount.cifs' to, and the directory of where you're windows share will mount in the 'mount.sh' script. If you leave it default, the '/tmp/cifs' directory will be where mount.cifs gets copied to, and '/tmp/win_share' will be where your windows share will be mounted to.

#####3. Kick off your mount.sh script on your CoreOS instance.

  ```
  $ chmod +x mount.sh
  $ ./mount.sh
  ```

Your windows share should now be mounted to your "CIFS_SHARE_DIR". If  you left this default, it will be '/tmp/win_share'
