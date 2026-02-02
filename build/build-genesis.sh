#!/bin/bash

pkill -9 geth
rm -rf node1/geth
rm -rf node2/geth
rm -rf node3/geth
bin/geth --datadir node1 init genesis.json
bin/geth --datadir node2 init genesis.json
bin/geth --datadir node3 init genesis.json