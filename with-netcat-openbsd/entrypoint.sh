#!/bin/sh

set -e

NETWORK_NAME="net99"

geth --datadir /root/.ethereum/$NETWORK_NAME init ./genesis.json

geth --datadir /root/.ethereum/$NETWORK_NAME --networkid 99
