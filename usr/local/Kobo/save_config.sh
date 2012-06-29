#!/bin/sh

INTERFACE=$1

wpa_cli -i$INTERFACE save_config
