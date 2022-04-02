# FROM mysql:5.7
FROM mysql:8
ARG TIMEZONE="Europe\/Madrid"
COPY ./my.cnf /etc/mysql/conf.d/my.cnf
RUN sed -i "s/<<CHANGEME>>/${TIMEZONE}/g" /etc/mysql/conf.d/my.cnf
RUN echo "USE mysql;" > /docker-entrypoint-initdb.d/timezones.sql && \
    mysql_tzinfo_to_sql /usr/share/zoneinfo >> /docker-entrypoint-initdb.d/timezones.sql
