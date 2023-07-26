#!/bin/bash

TAP_INTERFACE="test-tap0"
BRIDGE_INTERFACE="docker0"

screen -d -m ./firecracker --no-api --config-file configs/vmconfig.json 
sleep 2
ip link set $TAP_INTERFACE up
ip link set $TAP_INTERFACE master $BRIDGE_INTERFACE
