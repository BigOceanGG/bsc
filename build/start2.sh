#!/bin/bash

bin/geth --datadir "node2" --syncmode "full"  --port "30316" --ws --ws.addr "0.0.0.0" --ws.port "8646" --http --http.addr "0.0.0.0" --http.port "8645" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 62176 --miner.gasprice "0" --allow-insecure-unlock --unlock "0x1830F930885a903F31032D7db021e140bed41fe9" --password node2/password.txt --miner.etherbase "0x1830F930885a903F31032D7db021e140bed41fe9" --mine  --bootnodes "enode://@172.17.148.140:30316"  >node2.log 2>&1 &

tail -f node2.log