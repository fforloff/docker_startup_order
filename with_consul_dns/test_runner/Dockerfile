FROM ruby:2.2.1
COPY containerpilot/containerpilot.json /etc/containerpilot.json
COPY containerpilot/healthcheck.sh /usr/local/bin/healthcheck.sh
COPY containerpilot/prestart.sh /usr/local/bin/prestart.sh
ENV CONTAINERPILOT file:///etc/containerpilot.json

COPY run_test.sh /opt/run_test.sh

RUN apt-get update && apt-get install -y jq

CMD /usr/local/bin/containerpilot /opt/run_test.sh
