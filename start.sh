#!/bin/bash

set -e

export UVICORN_HOST=0.0.0.0
export UVICORN_PORT=${PORT:-8000}

export XRAY_JSON=${XRAY_JSON:-/etc/xray_config.json}

cd /code

echo "Starting Marzban..."

exec uvicorn app:app --host 0.0.0.0 --port ${UVICORN_PORT}
