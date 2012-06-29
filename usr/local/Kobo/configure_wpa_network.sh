#!/bin/sh

INTERFACE=$1
INDEX=$2
SSID=$3
PASSWORD=$4
if [ ${#PASSWORD} != 64 ]; then
	PASSWORD=`wpa_passphrase "$SSID" "$4" | grep ^\\\spsk | sed -e s/^\\\spsk=//`
fi
MODE=$5

wpa_cli -i$INTERFACE set_network $INDEX ssid \""$SSID"\"
wpa_cli -i$INTERFACE set_network $INDEX psk $PASSWORD 
wpa_cli -i$INTERFACE set_network $INDEX mode $MODE
