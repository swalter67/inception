
FROM alpine:3.14

RUN apk update && apk upgrade && \
    apk add --no-cache mariadb mariadb-client
RUN mkdir -p /run/mysqld && \
	chown -R mysql:mysql /run/mysqld

COPY ./tools/start.sh /
EXPOSE	3306

ENTRYPOINT ["sh", "/configure.sh"]