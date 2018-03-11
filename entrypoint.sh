#!/bin/bash
#########################################################################
# File Name: entrypoint.sh
# Version:0.1.20180216
# Created Time: 2018-02-16
#########################################################################

set -e

echo "+---------------------------------------------+"
echo "|              Habridge On Docker             |"
echo "+---------------------------------------------+"
echo "|       Images:{habridge-docker:5.2.0}        |"
echo "+---------------------------------------------+"
echo "|     Intro: https://github.com/ileez         |"
echo "+---------------------------------------------+"
echo ""

echo "Setting correct permissions"
chown -R nobody:users /usr/local/habridge

ADDPARAM="-Dupnp.config.address=$SERVERIP -Dserver.port=$SERVERPORT"
echo -e "Parameters used:\nServer IP : $SERVERIP\nServer Port : $SERVERPORT"

echo "Starting Home Automation Bridge"
java -jar $ADDPARAM /usr/local/habridge/habridge.jar 2>&1 | tee /usr/local/habridge/habridge.log

