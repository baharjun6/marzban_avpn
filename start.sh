#!/bin/bash

set -e

echo "Checking files..."

ls -la /code

echo "Starting..."

cd /code

export UVICORN_HOST=0.0.0.0
export UVICORN_PORT=${PORT:-8000}

export XRAY_JSON=/code/xray_config.json

python3 main.py
