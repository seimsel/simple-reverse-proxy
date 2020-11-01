FROM nginx:alpine

RUN apk update && \
    apk add esh
    
COPY nginx.templ.conf /etc/nginx/nginx.templ.conf
CMD ["/bin/sh", "-c", "esh -o /etc/nginx/nginx.conf /etc/nginx/nginx.templ.conf && nginx -g 'daemon off;'"]
