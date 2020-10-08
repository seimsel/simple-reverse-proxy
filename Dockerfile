FROM nginx:alpine

RUN apk update && \
    apk add gettext libintl
    
COPY nginx.templ.conf /etc/nginx/nginx.templ.conf
CMD ["/bin/sh", "-c", "envsubst '${HOST}' < /etc/nginx/nginx.templ.conf > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]
