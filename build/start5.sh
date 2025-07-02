#!/bin/bash

bin/geth --datadir "node5" --syncmode "full"  --port "30316" --ws --ws.addr "0.0.0.0" --ws.port "8646" --http --http.addr "0.0.0.0" --http.port "8645" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 73619 --miner.gasprice "0" --allow-insecure-unlock --unlock "0xe9CE0Ec3078d949E81Abe52f4dE96b76718CcBC3" --password node5/password.txt --miner.etherbase "0xe9CE0Ec3078d949E81Abe52f4dE96b76718CcBC3" --mine  --bootnodes "enode://@172.18.169.128:30316"  >node5.log 2>&1 &

tail -f node5.log