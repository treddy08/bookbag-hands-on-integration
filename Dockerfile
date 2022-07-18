FROM quay.io/openshifthomeroom/workshop-dashboard:5.0.0

USER root

RUN cd /tmp && curl -L  https://github.com/apache/camel-k/releases/download/v1.9.2/camel-k-client-1.9.2-linux-64bit.tar.gz | tar zxvf - && \
    mv /tmp/kamel /usr/local/bin/ && \
    chmod +x /usr/local/bin/kamel

COPY . /tmp/src

RUN rm -rf /tmp/src/.git* && \
    chown -R 1001 /tmp/src && \
    chgrp -R 0 /tmp/src && \
    chmod -R g+w /tmp/src

USER 1001

RUN /usr/libexec/s2i/assemble
