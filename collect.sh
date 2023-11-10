#!/bin/bash

if [ $# -eq 0 ]; then
    echo "collect.sh EXCHANGE SYMBOLS OUTPUT_PATH"
    echo "example: bash collect.sh binancefutures btcusdt,ethusdt /home/ubuntu/collect-binancefutures/data"
    exit 1
fi

rm nohup.out
nohup python3 collect/main.py $1 $2 $3 &

# 难点： 很可能 book snapshot 对不上！需要分开 coin 逐个尝试！
# bash collect.sh binancefutures btcusdt /home/ubuntu/collect-binancefutures/data
# bash collect.sh binancefutures ethusdt /home/ubuntu/collect-binancefutures/data
# sudo pkill -f collect/main.py