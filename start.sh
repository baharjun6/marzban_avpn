#!/bin/bash

set -e

cd /code

export UVICORN_HOST=0.0.0.0
export UVICORN_PORT=${PORT:-8000}

export XRAY_JSON=/code/xray_config.json

export SQLALCHEMY_DATABASE_URL=sqlite:////code/marzban.db

echo "Starting Marzban..."

exec python3 -m uvicorn app.main:app \
--host 0.0.0.0 \
--port ${PORT:-8000}
