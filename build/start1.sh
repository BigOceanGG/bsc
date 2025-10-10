#!/bin/bash

bin/geth  --syncmode "full" --datadir "node1" --port "30316" --ws --ws.addr "0.0.0.0" --ws.port "8646" --http --http.addr "0.0.0.0" --http.port "8645" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 62176 --miner.gasprice "0" --allow-insecure-unlock --unlock "0x5F73fD9eCAF868dF4C5D89772e32C048f9b33927" --password node1/password.txt --miner.etherbase "0x5F73fD9eCAF868dF4C5D89772e32C048f9b33927" --mine  >node1.log 2>&1 &

tail -f node1.log