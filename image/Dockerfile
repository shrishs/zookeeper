FROM docker.io/zookeeper:3.4
MAINTAINER Shrish Srivastava <shrivas@redhat.com>
ENV REFRESHED_AT 2018-01-11

COPY custom-entrypoint.sh /
COPY zookeeper-ready.sh /
RUN chgrp 1000 /zookeeper-ready.sh  && chmod g+rwx /zookeeper-ready.sh
RUN chgrp 1000 /custom-entrypoint.sh  && chmod g+rwx /custom-entrypoint.sh
ENTRYPOINT ["/custom-entrypoint.sh"]
CMD ["zkServer.sh", "start-foreground"]
