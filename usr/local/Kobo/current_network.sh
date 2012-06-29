#!/bin/sh

INDEX=`wpa_cli list_networks | grep \\\[CURRENT] | cut -f1`
if [ "x$INDEX" != "x" ]; then
	exit $INDEX
fi

exit 65535
