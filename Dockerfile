#part 4
FROM nginx

RUN apt update && apt install gcc libfcgi-dev spawn-fcgi -y
WORKDIR /server/
COPY ./server/nginx.conf /etc/nginx/nginx.conf
COPY ./server/server.c .
COPY ./server/server_run.sh .

ENTRYPOINT sh ./server_run.sh
