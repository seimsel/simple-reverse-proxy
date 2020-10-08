FROM nginx:alpine

RUN apk update \
    apk add gettext libintl
    
COPY nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT ["/bin/sh", "-c", "/usr/bin/envsubst < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf"]
CMD ["nginx" "-g" "daemon off;"]
