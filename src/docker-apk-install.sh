#!/bin/sh

set -e

apk add --update "$@"

rm -rf /var/cache/apk/*
