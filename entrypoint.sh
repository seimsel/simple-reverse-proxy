#!/bin/sh
set -e
export VOUCH_URL=$VOUCH_URL
esh -o /etc/nginx/nginx.conf /etc/nginx/nginx.conf.esh
nginx -g "daemon off;"
