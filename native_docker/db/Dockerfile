FROM postgres

COPY healthcheck.sh /usr/local/bin/healthcheck.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres"]
