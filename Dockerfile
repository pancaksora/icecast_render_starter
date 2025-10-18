FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends icecast2 ca-certificates gettext-base &&     rm -rf /var/lib/apt/lists/*
COPY icecast.xml.template /etc/icecast2/icecast.xml.template
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENV ICECAST_SOURCE_PASSWORD=sourcepass     ICECAST_ADMIN_PASSWORD=adminpass     ICECAST_RELAY_PASSWORD=relaypass     ICECAST_ADMIN_EMAIL=admin@example.com     ICECAST_HOSTNAME=localhost     PORT=8000
EXPOSE 8000
CMD ["/entrypoint.sh"]
