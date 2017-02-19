#!/bin/bash

[ 200 -eq $(curl -s -o /dev/null -w '%{http_code}' http://localhost:3000/works) ]
