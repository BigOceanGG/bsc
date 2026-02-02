#!/bin/bash

bin/geth --datadir "node2" --port "30312" --ws --ws.addr "0.0.0.0" --ws.port "8602" --http --http.addr "0.0.0.0" --http.port "8502" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 168 --miner.gasprice "0" --allow-insecure-unlock --unlock "0x4E380a4030fbC6B85aCd022eE75932d902c9243c" --password node2/password.txt --miner.etherbase "0x4E380a4030fbC6B85aCd022eE75932d902c9243c" --mine  --bootnodes "enode://b430568144f24e480687b411493112da5b7de8863bff5276bbcf2b333c8291b85d58efa2c6bccc61f59eb7e6f51189016c4afe7e66cd92c799a225017bf59ea3@127.0.0.1:30311" >node2.log 2>&1 &

tail -f node2.log