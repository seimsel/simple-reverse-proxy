#!/bin/sh
set -e
export AUTH_URL=$AUTH_URL
esh -o /etc/nginx/nginx.conf /etc/nginx/nginx.conf.esh
nginx -g "daemon off;"
