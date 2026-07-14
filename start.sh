#!/bin/bash

set -e


export UVICORN_HOST=0.0.0.0
export UVICORN_PORT=${PORT:-8000}


export XRAY_JSON=/code/xray_config.json


export SQLALCHEMY_DATABASE_URL=sqlite:////code/marzban.db


if [ -n "$SUDO_USERNAME" ] && [ -n "$SUDO_PASSWORD" ]; then

python3 -m marzban.cli admin create \
-u "$SUDO_USERNAME" \
-p "$SUDO_PASSWORD" || true

fi


alembic upgrade head


python3 main.py
