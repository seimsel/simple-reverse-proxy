#!/bin/sh
set -e
export VOUCH_URL=$VOUCH_URL
export VOUCH_HOST=$VOUCH_HOST
esh -o /etc/nginx/nginx.conf /etc/nginx/nginx.conf.esh
nginx -g "daemon off;"
