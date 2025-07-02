#!/bin/bash

bin/geth --datadir "node2" --syncmode "full"  --port "30316" --ws --ws.addr "0.0.0.0" --ws.port "8646" --http --http.addr "0.0.0.0" --http.port "8645" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 73619 --miner.gasprice "0" --allow-insecure-unlock --unlock "0xecF06bEF4e2CC2ee461398676fe7E1ea200B4EA8" --password node2/password.txt --miner.etherbase "0xecF06bEF4e2CC2ee461398676fe7E1ea200B4EA8" --mine  --bootnodes "enode://@172.18.169.128:30316"  >node2.log 2>&1 &

tail -f node2.log