# Base image

FROM centos

RUN yum update -y && yum clean all

# Install confd - https://github.com/kelseyhightower/confd
RUN curl -L https://github.com/kelseyhightower/confd/releases/download/v0.6.3/confd-0.6.3-linux-amd64 -o /usr/local/bin/confd; \
    chmod 0755 /usr/local/bin/confd; \
    mkdir -p /etc/confd/{conf.d,templates}

# Install gosu - https://github.com/tianon/gosu
RUN curl -L https://github.com/tianon/gosu/releases/download/1.1/gosu -o /usr/local/sbin/gosu; \
   chmod 0755 /usr/local/sbin/gosu
