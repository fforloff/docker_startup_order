FROM ruby:2.2.1

COPY healthcheck.sh /usr/local/bin/healthcheck.sh

# Install gems
WORKDIR /app
RUN apt-get update && apt-get install -y postgresql-server-dev-9.4 jq

# Start server
ENV PORT 3000
EXPOSE 3000
CMD bundle install && ruby shakespeare.rb
