#!/bin/bash

bin/geth --datadir "node3" --port "30313" --ws --ws.addr "0.0.0.0" --ws.port "8603" --http --http.addr "0.0.0.0" --http.port "8103" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 69916 --miner.gasprice "0" --allow-insecure-unlock --unlock "0x0aEA566959ff98c3BcfaD4F732Bb3C8388fD87EB" --password node3/password.txt --miner.etherbase "0x0aEA566959ff98c3BcfaD4F732Bb3C8388fD87EB" --mine  --bootnodes "enode://dc3e2af489bf4d21a50f7f38727971613aa5b33a697c46a42eb83a3df313ee5e6979017bdd7a77e8013b344fda9fa2bcb0c2e9c826cee304795210238031e755@127.0.0.1:30311" >node3.log 2>&1 &

tail -f node3.log