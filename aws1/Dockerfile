FROM nginx:1.23
COPY aws1/nginx.conf /etc/nginx/nginx.conf
COPY aws1/default.conf /etc/nginx/conf.d/default.conf
COPY aws1/stream.conf /etc/nginx/conf.d/stream.conf
COPY content-home/index.html /usr/share/nginx/html/index.html
COPY script/gen_htpasswd.sh /etc/nginx/gen_htpasswd.sh


RUN apt update
RUN apt install -y openssl


RUN chmod -R 777 /etc/nginx/gen_htpasswd.sh
RUN /etc/nginx/gen_htpasswd.sh
