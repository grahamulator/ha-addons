#!/usr/bin/with-contenv bashio

echo "Starting Twingate Connector..."

NETWORK=$(bashio::config 'network_slug')
ACCESS_TOKEN=$(bashio::config 'access_token')
REFRESH_TOKEN=$(bashio::config 'refresh_token')

echo "Network: ${NETWORK}."
echo "Access token: ${ACCESS_TOKEN}."
echo "Refresh token: ${REFRESH_TOKEN}."
