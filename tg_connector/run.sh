#!/usr/bin/with-contenv bashio

echo "Starting Twingate Connector..."

NETWORK=$(bashio::config 'network_slug')
NAME=$(bashio::config 'connector_name')
ACCESS_TOKEN=$(bashio::config 'access_token')
REFRESH_TOKEN=$(bashio::config 'refresh_token')

echo "Network: ${NETWORK}"
echo "Access token: ${ACCESS_TOKEN}"
echo "Refresh token: ${REFRESH_TOKEN}"

docker run -d --sysctl net.ipv4.ping_group_range="0 2147483647" --env TWINGATE_URL="https://${NETWORK}" --env TWINGATE_ACCESS_TOKEN="${ACCESS_TOKEN}" --env TWINGATE_REFRESH_TOKEN="${REFRESH_TOKEN}"  --env TWINGATE_LABEL_HOSTNAME="`hostname`" --env TWINGATE_LABEL_DEPLOYED_BY="docker" --name "${NAME}" --restart=unless-stopped --pull=always twingate/connector:1

echo "Twingate Connector Deployed."