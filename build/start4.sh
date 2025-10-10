#!/bin/bash

bin/geth --datadir "node4" --syncmode "full"  --port "30316" --ws --ws.addr "0.0.0.0" --ws.port "8646" --http --http.addr "0.0.0.0" --http.port "8645" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 62176 --miner.gasprice "0" --allow-insecure-unlock --unlock "0x034ee47C119E62EC79813e55aE7a55A8eF4E399F" --password node4/password.txt --miner.etherbase "0x034ee47C119E62EC79813e55aE7a55A8eF4E399F" --mine  --bootnodes "enode://@172.18.169.128:30316"  >node4.log 2>&1 &

tail -f node4.log