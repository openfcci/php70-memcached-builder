FROM ubuntu:xenial
MAINTAINER Dustin Rue <dustin.rue@forumcomm.com>

RUN apt-get update && apt-get install -y \
  build-essential \
  php7.0-dev \
  git-core \
  pkg-config \
  libmemcached-dev



ADD lib/run.sh usr/local/sbin/run.sh
RUN chmod 755 usr/local/sbin/run.sh
RUN mkdir /output

ENTRYPOINT ["run.sh"]
