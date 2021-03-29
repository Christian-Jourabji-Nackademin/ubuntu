FROM ubuntu:latest

COPY code/* /app/code/

WORKDIR /app/code


RUN apt-get update \
    && apt-get install -y default-mysql-client -y postgresql-client -y mongodb-clients -y telnet -y curl -y wget

CMD mysql -P 3307:3306 -uchris -pdocker -e  "show databases;"