FROM ubuntu:14.04
MAINTAINER Bryce Kottke

# Install cifs-utils
RUN apt-get update \
  && apt-get install -y cifs-utils

ADD copy.sh /usr/local/bin/copy.sh

CMD ["copy.sh"]
