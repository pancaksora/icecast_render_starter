#!/usr/bin/env bash
set -e
: ${PORT:=8000}
: ${ICECAST_SOURCE_PASSWORD:=sourcepass}
: ${ICECAST_ADMIN_PASSWORD:=adminpass}
: ${ICECAST_RELAY_PASSWORD:=relaypass}
: ${ICECAST_ADMIN_EMAIL:=admin@example.com}
: ${ICECAST_HOSTNAME:=localhost}
envsubst < /etc/icecast2/icecast.xml.template > /etc/icecast2/icecast.xml
echo "Starting Icecast on port ${PORT} ..."
exec icecast2 -c /etc/icecast2/icecast.xml -n
