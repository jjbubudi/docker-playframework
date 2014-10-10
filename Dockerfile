FROM java:8
MAINTAINER Jimmy Au

ENV ACTIVATOR_VERSION 1.2.10
ENV PATH $PATH:/opt/activator-$ACTIVATOR_VERSION

ADD \
http://downloads.typesafe.com/typesafe-activator/$ACTIVATOR_VERSION/typesafe-activator-$ACTIVATOR_VERSION.zip \
/tmp/activator.zip

RUN \
  cd /opt \
  && unzip /tmp/activator.zip \
  && rm -f /tmp/activator.zip

VOLUME ["/opt/code"]
WORKDIR /opt/code

EXPOSE 9000
EXPOSE 8888

CMD ["/bin/bash"]
