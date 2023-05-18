FROM mysql


COPY ./init.sql /docker-entrypoint-initdb.d/
ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes
ENV MYSQL_DATABASE=newsDB

