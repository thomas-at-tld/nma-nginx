FROM nginx:1.23
COPY cloud/default.conf /etc/nginx/conf.d/default.conf
COPY content-home/index.html /usr/share/nginx/html/index.html
COPY script/gen_htpasswd.sh /etc/nginx/gen_htpasswd.sh


RUN apt update
RUN apt install -y openssl


RUN chmod -R 777 /etc/nginx/gen_htpasswd.sh
RUN /etc/nginx/gen_htpasswd.sh
