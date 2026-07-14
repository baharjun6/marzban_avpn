FROM gozargah/marzban:latest

USER root

COPY xray_config.json /var/lib/marzban/xray_config.json
