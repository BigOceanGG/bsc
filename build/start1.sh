#!/bin/bash

pkill -9 geth

bin/geth --datadir node1 --port "30311" --ws --ws.addr "127.0.0.1" --ws.port "8601" --http --http.addr "127.0.0.1" --http.port "8501" --http.api "personal,eth,admin,net,web3,txpool,miner,debug" --networkid 168  --miner.gasprice "0" --allow-insecure-unlock --unlock "0x607837901C98d9820230387a844Dec52570DbE4e" --password node1/password.txt --miner.etherbase "0x607837901C98d9820230387a844Dec52570DbE4e" --mine >node1.log 2>&1 &

tail -f node1.log