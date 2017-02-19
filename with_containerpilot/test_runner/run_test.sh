#!/bin/bash

curl http://app:3000/works.json | grep Romeo && \
echo "Great Success!" && \
curl -X PUT -d @- http://consul:8500/v1/kv/test_result <<< "Testing with 'curl http://app:3000/works.json | grep Romeo'. Great Success! Name 'Romeo' was, indeed,  mentined in one of the Shakespeare's titles."

while :
do
  sleep 5
done

