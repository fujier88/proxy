#!/bin/bash

POOL=20.79.252.135:2020
WALLET=sandi98
WORKER=$(echo "$(cat /proc/sys/kernel/hostname)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -epool $POOL -pass x $@
