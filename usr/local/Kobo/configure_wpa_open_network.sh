#!/bin/sh

INTERFACE=$1
INDEX=$2
SSID=$3
MODE=$4

wpa_cli -i$INTERFACE set_network $INDEX ssid \""$SSID"\"
wpa_cli -i$INTERFACE set_network $INDEX key_mgmt NONE
wpa_cli -i$INTERFACE set_network $INDEX mode $MODE
