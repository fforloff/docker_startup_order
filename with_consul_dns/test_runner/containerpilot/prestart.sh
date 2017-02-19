#!/bin/bash
set -x

while :
do
  curl -s http://consul:8500/v1/health/checks/app | jq -r '.[0]["Output"]' | grep -q ok
  if [ $? == 0 ]
  then
      break
  fi
  sleep 1
done
