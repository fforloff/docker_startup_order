FROM ruby:2.2.1

COPY containerpilot/containerpilot.json /etc/containerpilot.json
COPY containerpilot/healthcheck.sh /usr/local/bin/healthcheck.sh
COPY containerpilot/prestart.sh /usr/local/bin/prestart.sh
ENV CONTAINERPILOT file:///etc/containerpilot.json

# Install gems
WORKDIR /app
RUN apt-get update && apt-get install -y postgresql-server-dev-9.4 jq
#RUN apt-get update && apt-get install -y postgresql-server-dev-9.4 && bundle install

# Start server
ENV PORT 3000
EXPOSE 3000
CMD bundle install && /usr/local/bin/containerpilot ruby shakespeare.rb
