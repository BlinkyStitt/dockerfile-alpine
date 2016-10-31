#
# An Alpine Linux container with helper scripts for installing packages
#

FROM alpine:3.4

ADD ./src/docker-apk-install.sh /usr/local/sbin/docker-apk-install
RUN chmod 500 /usr/local/sbin/docker-apk-install
