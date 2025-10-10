#!/bin/bash

bin/geth --datadir "node3" --syncmode "full"  --port "30316" --ws --ws.addr "0.0.0.0" --ws.port "8646" --http --http.addr "0.0.0.0" --http.port "8645" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 62176 --miner.gasprice "0" --allow-insecure-unlock --unlock "0x4ba39EFd442E97A39bB329BD190d7E6F32727CAd" --password node3/password.txt --miner.etherbase "0x4ba39EFd442E97A39bB329BD190d7E6F32727CAd" --mine  --bootnodes "enode://@172.17.148.140:30316"  >node3.log 2>&1 &

tail -f node3.log