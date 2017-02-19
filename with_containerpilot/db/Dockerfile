FROM postgres

COPY containerpilot/containerpilot.json /etc/containerpilot.json
COPY containerpilot/healthcheck.sh /usr/local/bin/healthcheck.sh
ADD      https://github.com/catherinedevlin/opensourceshakespeare/raw/master/shakespeare.sql /docker-entrypoint-initdb.d/shakespeare.sql
RUN chmod 444 /docker-entrypoint-initdb.d/shakespeare.sql

ENV CONTAINERPILOT file:///etc/containerpilot.json
ENTRYPOINT ["/usr/local/bin/containerpilot", "docker-entrypoint.sh"]
CMD ["postgres"]
