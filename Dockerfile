FROM nginx:alpine

RUN apk update && \
    apk add esh

COPY entrypoint.sh entrypoint.sh
COPY nginx.conf.esh /etc/nginx/nginx.conf.esh
ENTRYPOINT [ "./entrypoint.sh" ]
