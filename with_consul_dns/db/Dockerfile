FROM postgres

COPY containerpilot/containerpilot.json /etc/containerpilot.json
COPY containerpilot/healthcheck.sh /usr/local/bin/healthcheck.sh

ENV CONTAINERPILOT file:///etc/containerpilot.json
ENTRYPOINT ["/usr/local/bin/containerpilot", "docker-entrypoint.sh"]
CMD ["postgres"]
