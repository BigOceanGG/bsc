#!/bin/bash

bin/geth --datadir "node2" --port "30312" --ws --ws.addr "0.0.0.0" --ws.port "8602" --http --http.addr "0.0.0.0" --http.port "8102" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 69916 --miner.gasprice "0" --allow-insecure-unlock --unlock "0x4E380a4030fbC6B85aCd022eE75932d902c9243c" --password node2/password.txt --miner.etherbase "0x4E380a4030fbC6B85aCd022eE75932d902c9243c" --mine  --bootnodes "enode://dc3e2af489bf4d21a50f7f38727971613aa5b33a697c46a42eb83a3df313ee5e6979017bdd7a77e8013b344fda9fa2bcb0c2e9c826cee304795210238031e755@127.0.0.1:30311" >node2.log 2>&1 &

tail -f node2.log