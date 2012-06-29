#!/bin/sh

INTERFACE=$1
INDEX=$2
SSID=$3
PASSWORD=$4
MODE=$5

wpa_cli -i$INTERFACE set_network $INDEX ssid \""$SSID"\"
wpa_cli -i$INTERFACE set_network $INDEX key_mgmt NONE
wpa_cli -i$INTERFACE set_network $INDEX wep_key0 $PASSWORD
wpa_cli -i$INTERFACE set_network $INDEX wep_tx_keyidx 0
wpa_cli -i$INTERFACE set_network $INDEX mode $MODE
wpa_cli -i$INTERFACE set_network $INDEX auth_alg "OPEN SHARED"
