#!/bin/sh

INTERFACE=$1

NETWORK=`wpa_cli -i$INTERFACE add_network`
if [ "x$NETWORK" != "x" ]; then
	exit $NETWORK
fi

exit 65535
