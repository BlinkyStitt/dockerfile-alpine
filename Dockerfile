#
# An Alpine Linux container with helper scripts for installing packages
#

FROM alpine:3.5

# linuxserver.io's images default to having abc user with gid/uid 911
RUN addgroup -g 911 abc \
 && adduser -G abc -D -u 911 abc

# helper to install things and cleanup to keep image sizes down
ADD docker-apk-install.sh /usr/local/sbin/docker-apk-install

RUN docker-apk-install su-exec
