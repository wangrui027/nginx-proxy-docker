#!/bin/sh

if [ -z ${PROXY_ADDRESS} ]; then
  echo "ERROR: env PROXY_ADDRESS not exists, program exit."
  exit 1
else
  if [ "${PROXY_ADDRESS: -1}" != "/" ]; then PROXY_ADDRESS="${PROXY_ADDRESS}/"; fi
fi

if [ -z ${PORT} ]; then export PORT=80; fi

echo
echo "INFO: nginx-proxy is running"
echo "INFO: proxy address: ${PROXY_ADDRESS}"
echo "INFO: running port: ${PORT}"
echo

CONF_FILE=/etc/nginx/conf.d/default.conf

envsubst '${PROXY_ADDRESS},${PORT}' < ${CONF_FILE} > ${CONF_FILE}

nginx
