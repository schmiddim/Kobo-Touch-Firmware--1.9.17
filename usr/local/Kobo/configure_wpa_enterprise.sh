#!/bin/sh

INTERFACE=$1
INDEX=$2
SSID=$3
IDENTITY=$4
PASSWORD=$5
MODE=$6

wpa_cli -i$INTERFACE set_network $INDEX ssid \""$SSID"\"
wpa_cli -i$INTERFACE identity $INDEX \""$IDENTITY\""
wpa_cli -i$INTERFACE password $INDEX \""$PASSWORD\""
wpa_cli -i$INTERFACE set_network $INDEX mode $MODE
