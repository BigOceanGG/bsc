#!/bin/bash

bin/geth --datadir "node2" --port "30312" --http --http.addr "127.0.0.1" --http.port "8502" --http.api "personal,eth,admin,net,web3,txpool,miner" --networkid 168 --miner.gasprice "0" --allow-insecure-unlock --unlock "0x4E380a4030fbC6B85aCd022eE75932d902c9243c" --password node2/password.txt --miner.etherbase "0x4E380a4030fbC6B85aCd022eE75932d902c9243c" --mine  --bootnodes "enode://848706b535802c61bc971b663f4ff020202587f34d87be938b19f15de20d70c1d5c776aa335694dabf3a6cc1ee00f48ca0541f91353e275e08a6520587b7d036@127.0.0.1:30311" >node2.log 2>&1 &

tail -f node2.log