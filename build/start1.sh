#!/bin/bash

pkill -9 geth

bin/geth  --syncmode "full" --datadir "node1" --port "30316" --ws --ws.addr "0.0.0.0" --ws.port "8646" --http --http.addr "0.0.0.0" --http.port "8645" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 73619 --miner.gasprice "0" --allow-insecure-unlock --unlock "0xe83E51a1912bd83E456568c275D933BF3A8B95c6" --password node1/password.txt --miner.etherbase "0xe83E51a1912bd83E456568c275D933BF3A8B95c6" --mine  >node1.log 2>&1 &

tail -f node1.log