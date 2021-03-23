FROM ubuntu:latest

COPY code/* /app/code/

WORKDIR /app/code

CMD [ "ls" ]

RUN apt-get update \
    && apt-get install -y default-mysql-client -y postgresql-client -y mongodb-clients -y telnet -y curl -y wget
