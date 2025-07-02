#!/bin/bash

pkill -9 geth
rm -rf node1/geth
bin/geth --datadir node1 init genesis.json