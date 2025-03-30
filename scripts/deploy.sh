#!/bin/bash

echo "Deploying service"

python ../src/app.py & sleep 1

if [[ ps aux | grep -v grep | grep "python ../src/app.py" ]]; then
    echo "Service is running"
else
    echo "Service is not running"
    exit 1
fi