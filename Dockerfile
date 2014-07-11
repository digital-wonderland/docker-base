# Base image

FROM centos:centos6

# Install confd - https://github.com/kelseyhightower/confd
RUN curl -L https://github.com/kelseyhightower/confd/releases/download/v0.5.0/confd-0.5.0-linux-amd64 -o /usr/local/bin/confd; \
    chmod 0755 /usr/local/bin/confd; \
    mkdir -p /etc/confd/{conf.d,templates}
