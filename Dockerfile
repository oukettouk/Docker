FROM nginx:latest
RUN set -i 's/nginx/khalil/g' /usr/share/nginx/html/index.html
EXPOSE 80
