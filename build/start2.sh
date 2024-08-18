#!/bin/bash

bin/geth --datadir "node2" --port "30312" --http --http.addr "127.0.0.1" --http.port "8502" --http.api "personal,eth,admin,net,web3,txpool,miner" --networkid 168 --miner.gasprice "0" --allow-insecure-unlock --unlock "0x4E380a4030fbC6B85aCd022eE75932d902c9243c" --password node2/password.txt --miner.etherbase "0x4E380a4030fbC6B85aCd022eE75932d902c9243c" --mine  --bootnodes "enode://9e08a2bc6542445d652c6dfd4e5fcb180ab843b8f5e731e2ce3b481a4146b51834e40345c5a2c78ec02fe44b45488605c0aa8af60967d1e199589843c03a3ad9@127.0.0.1:30311" >node2.log 2>&1 &

tail -f node2.log