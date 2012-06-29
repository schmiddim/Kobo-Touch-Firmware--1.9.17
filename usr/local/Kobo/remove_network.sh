#!/bin/sh

INTERFACE=$1
INDEX=$2

echo "Removing Network: Interface: $1 - Index: $2"

wpa_cli -i$INTERFACE remove_network $INDEX
