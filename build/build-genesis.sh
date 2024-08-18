#!/bin/bash

rm -rf node1/geth
rm -rf node2/geth
bin/geth --datadir node1 init genesis.json
bin/geth --datadir node2 init genesis.json