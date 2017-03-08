#
# An Alpine Linux container with helper scripts for installing packages
#

FROM alpine:3.5

# helper to install things and cleanup to keep image sizes down
ADD ./src/docker-apk-install.sh /usr/local/sbin/docker-apk-install
RUN chmod 500 /usr/local/sbin/docker-apk-install

RUN docker-apk-install su-exec \
 && adduser -S user
