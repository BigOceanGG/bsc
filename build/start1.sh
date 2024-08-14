#!/bin/bash

pkill -9 geth

bin/geth --datadir node1 -http -http.api "web3,eth,net,debug,personal,admin,miner" --http.addr "0.0.0.0" --http.port 8545 --ws --networkid 168  --allow-insecure-unlock  --rpc.allow-unprotected-txs --history.transactions 0 >node1.log 2>&1 &

tail -f node1.log