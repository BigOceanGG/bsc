#!/bin/bash

bin/geth --datadir node2 -http -http.api "web3,eth,net,debug,personal,admin,miner" --http.addr "0.0.0.0" --port 30503 --http.port 8645 --ws --ws.port 8646  --networkid 168  --allow-insecure-unlock --rpc.allow-unprotected-txs --history.transactions 0 --bootnodes 'enode://49bbca415e31258577d5964ff3e289cf8b52bb267991baae66df6d6fc9a8a7ee235c8b1d346ec61ac5826ed5aa7add69e432be205d7adfd8994d3ed41882277b@127.0.0.1:30303' >node2.log 2>&1 &

tail -f node2.log