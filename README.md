This project was created as a part of Victor Orlov's presentation at the Melbourne Docker Meetup.
It demonstrates controlling of the docker instances start order - both natively (requires Docker 1.12+) and by using Joyent Triton ContainerPilot micro-orchestration tool with Hashicorp Consul as a service discovery backend.
The example application is a simple Ruby/Sinatra one-pager, displaying a list of works by William Shakespeare. It uses PostgreSQL as a data store.

### Setup

Clone this repo:
```
git clone https://github.com/fforloff/docker_startup_order
```

### Run the native docker example
Requires docker version >= 1.12

```
cd native_docker
POSTGRES_PASSWORD=<password> docker-compose up
```
to view the logs run 'docker-compose logs -f' in a separate window.
Once database and application up and running, test_runner will fire a test curl command and report outcome to the STDOUT

### Run a Hashicorp Consul / Triton (Joyent) ContainerPilot

```
cd with_containerpilot
POSTGRES_PASSWORD=<password> docker-compose up -d
docker-compose logs -f
```
Consul console is available on http://localhost:8500
Once test_runner is up and registered with Consul, test result is available

### References

Hashicorp Consul: https://www.consul.io
Triton ContainerPilot by Joyent: https://www.joyent.com/containerpilot

OpenSource Shakespeare Database: https://github.com/catherinedevlin/opensourceshakespeare
