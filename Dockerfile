FROM nginx:alpine

RUN apk update \
    apk add gettext
    
COPY nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT "envsubst < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf"
CMD ["nginx" "-g" "daemon off;"]
