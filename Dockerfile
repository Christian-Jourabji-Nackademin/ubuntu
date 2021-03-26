FROM ubuntu:latest

COPY code/* /app/code/

WORKDIR /app/code

CMD mysql -uchris -pdocker -P3307, show databases;

RUN apt-get update \
    && apt-get install -y default-mysql-client -y postgresql-client -y mongodb-clients -y telnet -y curl -y wget