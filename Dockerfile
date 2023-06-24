# FROM registry.access.redhat.com/ubi8/ubi:latest
FROM redhat/ubi8
MAINTAINER "yuhkih" 

RUN dnf install -y nginx
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf

# EXPOSE 8080

CMD ["-g","daemon off;"]
ENTRYPOINT ["nginx"]
