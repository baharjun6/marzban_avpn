#!/bin/bash

set -e

export UVICORN_HOST=0.0.0.0
export UVICORN_PORT=${PORT:-8000}

export XRAY_JSON=${XRAY_JSON:-/var/lib/marzban/xray_config.json}

echo "Starting Marzban on ${UVICORN_HOST}:${UVICORN_PORT}"

cd /code

python3 main.py --host 0.0.0.0 --port ${UVICORN_PORT}
