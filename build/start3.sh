#!/bin/bash

bin/geth --datadir "node3" --port "30313" --ws --ws.addr "0.0.0.0" --ws.port "8603" --http --http.addr "0.0.0.0" --http.port "8503" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 168 --miner.gasprice "0" --allow-insecure-unlock --unlock "0x0aEA566959ff98c3BcfaD4F732Bb3C8388fD87EB" --password node3/password.txt --miner.etherbase "0x0aEA566959ff98c3BcfaD4F732Bb3C8388fD87EB" --mine  --bootnodes "enode://b430568144f24e480687b411493112da5b7de8863bff5276bbcf2b333c8291b85d58efa2c6bccc61f59eb7e6f51189016c4afe7e66cd92c799a225017bf59ea3@127.0.0.1:30311" >node3.log 2>&1 &

tail -f node3.log