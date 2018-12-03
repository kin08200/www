FROM nginx:1.14.1
MAINTAINER Jinlong
RUN rm -rf /etc/nginx/conf.d/*
ADD ["nginx.conf","/etc/nginx/nginx.conf"]
ADD ["www.conf","/etc/nginx/conf.d/www.conf"]
RUN mkdir -p /data/web && chown -R nginx.nginx /data/web
ADD index.html /data/web/
EXPOSE 80
CMD ["nginx", "-g","daemon off;"]
