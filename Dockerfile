FROM ubuntu:trusty
MAINTAINER dockerlee <tealee1992@163.com>
ADD startup.sh /startup.sh
ADD cpuratio /cpuratio
RUN apt-get update && apt-get install -y stress
CMD ["startup.sh"]
