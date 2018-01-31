FROM docker.io/zookeeper:3.4
##FROM docker.io/cassandra:3.0.15
MAINTAINER Shrish Srivastava <shrivas@redhat.com>
ENV REFRESHED_AT 2018-01-11

COPY custom-entrypoint.sh /
##COPY ready-probe.sh /
##RUN chgrp 0 /ready-probe.sh  && chmod g+rwx /ready-probe.sh
RUN chgrp 1000 /custom-entrypoint.sh  && chmod g+rwx /custom-entrypoint.sh
ENTRYPOINT ["/custom-entrypoint.sh"]
##CMD ["cassandra", "-f"]
CMD ["zkServer.sh", "start-foreground"]
