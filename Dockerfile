FROM gozargah/marzban:latest

USER root

COPY start.sh /start.sh
COPY xray_config.json /code/xray_config.json

RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
