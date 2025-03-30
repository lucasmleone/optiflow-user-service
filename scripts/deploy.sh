#!/bin/bash

echo "Deploying service"
echo "Estoy en: $(pwd)"

python3 src/app.py & sleep 1

if [[ ps aux | grep -v grep | grep "python3 src/app.py" ]]; then
    echo "O.O Service is running"
else
    echo ">.< Service is not running"
    exit 1
fi