FROM nginx:alpine

RUN apk update && \
    apk add gettext libintl
    
COPY nginx.conf /etc/nginx/nginx.conf
CMD ["/bin/sh", "-c", "envsubst '${HOST}' < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf && nginx -g daemon off;"]
