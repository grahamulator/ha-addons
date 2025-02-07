#!/usr/bin/with-contenv bashio

echo "Starting Twingate Connector..."

NETWORK=$(bashio::config 'network_slug')
ACCESS_TOKEN=$(bashio::config 'access_token')
REFRESH_TOKEN=$(bashio::config 'refresh_token')

echo "Network: ${NETWORK}"
echo "Access token: ${ACCESS_TOKEN}"
echo "Refresh token: ${REFRESH_TOKEN}"

curl "https://binaries.twingate.com/connector/setup.sh" | TWINGATE_ACCESS_TOKEN="${ACCESS_TOKEN}" TWINGATE_REFRESH_TOKEN="${REFRESH_TOKEN}" TWINGATE_URL="https://${NETWORK}" TWINGATE_LABEL_DEPLOYED_BY="linux" bash

echo "Twingate Connector Deployed."