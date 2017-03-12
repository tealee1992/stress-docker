FROM ubuntu:trusty
MAINTAINER dockerlee <tealee1992@163.com>
ADD startup.sh /startup.sh
ADD cpuratio /cpuratio
RUN mkdir /tempfiles/
RUN apt-get update && apt-get install -y stress \
    && apt-get install -y curl\
    && apt-get autoclean \
    && apt-get autoremove
ENTRYPOINT ["/bin/sh","/startup.sh"]
