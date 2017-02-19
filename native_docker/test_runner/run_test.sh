#!/bin/bash

curl http://app:3000/works.json | grep -q Romeo && \
echo "Testing with 'curl http://app:3000/works.json | grep Romeo'. Great Success! Name 'Romeo' was, indeed,  mentined in one of the Shakespeare's titles."

