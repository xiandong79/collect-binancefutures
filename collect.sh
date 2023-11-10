#!/bin/bash

if [ $# -eq 0 ]; then
    echo "collect.sh EXCHANGE SYMBOLS OUTPUT_PATH"
    echo "example: bash collect.sh binancefutures btcusdt,ethusdt /home/ubuntu/collect-binancefutures/data"
    exit 1
fi

rm nohup.out
nohup python3 collect/main.py $1 $2 $3 &

# sudo pkill -f collect/main.py