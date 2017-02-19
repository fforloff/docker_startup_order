FROM postgres

COPY healthcheck.sh /usr/local/bin/healthcheck.sh
ADD      https://github.com/catherinedevlin/opensourceshakespeare/raw/master/shakespeare.sql /docker-entrypoint-initdb.d/shakespeare.sql
RUN chmod 444 /docker-entrypoint-initdb.d/shakespeare.sql

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres"]
