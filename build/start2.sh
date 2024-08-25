#!/bin/bash

bin/geth --datadir "node2" --port "30312" --ws --ws.addr "0.0.0.0" --ws.port "8602" --http --http.addr "0.0.0.0" --http.port "8502" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 168 --miner.gasprice "0" --allow-insecure-unlock --unlock "0x4E380a4030fbC6B85aCd022eE75932d902c9243c" --password node2/password.txt --miner.etherbase "0x4E380a4030fbC6B85aCd022eE75932d902c9243c" --mine  --bootnodes "enode://bfb2f6a2aaa76ef95624906508b2151ab316a2b7e6928f7b248e7e50f4db2326c9fca70ee789f757946dc090884fdd9a0c35ec431b19dc9cd21ef856ed8bf7ec@127.0.0.1:30311" >node2.log 2>&1 &

tail -f node2.log