#!/bin/bash

set -e

export UVICORN_HOST=0.0.0.0
export UVICORN_PORT=${PORT:-8000}

export XRAY_JSON=/code/xray_config.json

export SQLALCHEMY_DATABASE_URL=sqlite:////code/marzban.db

echo "Running database migration..."

alembic upgrade head

echo "Starting Marzban..."

python3 main.py
