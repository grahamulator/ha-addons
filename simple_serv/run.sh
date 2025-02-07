#!/usr/bin/with-contenv bashio

echo "Hello world!"

THAI_CUISINE=$(bashio::config 'thai')
MEXICAN_CUISINE=$(bashio::config 'mexican')
ITALIAN_CUISINE=$(bashio::config 'italian')

echo "I love ${THAI_CUISINE}."
echo "And also ${MEXICAN_CUISINE}."
echo "And finally ${ITALIAN_CUISINE}."

python3 -m http.server 8000