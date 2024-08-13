#!/bin/bash

pkill -9 geth

bin/geth -ws -http -http.api "web3,eth,net,debug,personal,admin,miner" --http.addr "0.0.0.0" --http.port 8545 --ws  --networkid 168  --allow-insecure-unlock  --rpc.allow-unprotected-txs --history.transactions 0 >geth.log 2>&1 &

tail -f geth.log