#!/bin/bash

bin/geth --datadir "node3" --port "30313" --ws --ws.addr "0.0.0.0" --ws.port "8603" --http --http.addr "0.0.0.0" --http.port "8503" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 168 --miner.gasprice "0" --allow-insecure-unlock --unlock "0x0aEA566959ff98c3BcfaD4F732Bb3C8388fD87EB" --password node3/password.txt --miner.etherbase "0x0aEA566959ff98c3BcfaD4F732Bb3C8388fD87EB" --mine  --bootnodes "enode://bfb2f6a2aaa76ef95624906508b2151ab316a2b7e6928f7b248e7e50f4db2326c9fca70ee789f757946dc090884fdd9a0c35ec431b19dc9cd21ef856ed8bf7ec@127.0.0.1:30311" >node3.log 2>&1 &

tail -f node3.log