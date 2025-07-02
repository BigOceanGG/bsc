#!/bin/bash

bin/geth --datadir "node3" --syncmode "full"  --port "30316" --ws --ws.addr "0.0.0.0" --ws.port "8646" --http --http.addr "0.0.0.0" --http.port "8645" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 73619 --miner.gasprice "0" --allow-insecure-unlock --unlock "0xd32a65448E4b7dE8A35E9C5050777b36Fb3d21cc" --password node3/password.txt --miner.etherbase "0xd32a65448E4b7dE8A35E9C5050777b36Fb3d21cc" --mine  --bootnodes "enode://@172.18.169.128:30316"  >node3.log 2>&1 &

tail -f node3.log