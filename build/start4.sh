#!/bin/bash

bin/geth --datadir "node4" --syncmode "full"  --port "30316" --ws --ws.addr "0.0.0.0" --ws.port "8646" --http --http.addr "0.0.0.0" --http.port "8645" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 73619 --miner.gasprice "0" --allow-insecure-unlock --unlock "0xa89836b83A241A28Aff8E9252A36b3033E923446" --password node4/password.txt --miner.etherbase "0xa89836b83A241A28Aff8E9252A36b3033E923446" --mine  --bootnodes "enode://@172.18.169.128:30316"  >node4.log 2>&1 &

tail -f node4.log