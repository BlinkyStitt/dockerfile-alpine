FROM alpine:3.4

CMD ["/bin/sh"]

# Rockerfiles have this, but don't work with Docker Hub
# ATTACH ["/bin/sh"]
# PUSH bwstitt/library-alpine:3.4
