#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: npm run openLG <target LG device>" >&2
  exit 1
fi

IP=`ifconfig -a | awk '$1 == "inet" && !/127./ {print $2; exit;}'`
if [ ${SMART_TV_DEBUG_IP} ]; then
  IP="$SMART_TV_DEBUG_IP"
fi
DEVICE=$1
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "will update & launch a test container $DIR pointing to $IP:$PORT on the $DEVICE LG smartTV"

# cp $DIR/index_source.html $DIR/index.html
# perl -pi -e "s/URL=.*\"/URL=http:\/\/$IP:$PORT\"/g" $DIR/index.html
# perl -pi -e "s/DEVELOPER_DEVICE_URL/http:\/\/$IP:$PORT/g" $DIR/index.html
ares-package $DIR
ares-install -d $DEVICE com.dotscreen.debug_0.0.0_all.ipk
ares-launch -d $DEVICE com.dotscreen.debug
rm -rf com.dotscreen.debug_0.0.0_all.ipk
