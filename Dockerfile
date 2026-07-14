FROM gozargah/marzban:latest

USER root

COPY xray_config.json /etc/xray_config.json
