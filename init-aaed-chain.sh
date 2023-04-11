#!/bin/env bash

mkdir validator1 && mkdir validator2 && mkdir validator3 && mkdir bootnode
cp aaed/build/bin/geth validator1
cp aaed/build/bin/geth validator2
cp aaed/build/bin/geth validator3
cp aaed/build/bin/geth bootnode

validator1/geth init --datadir validator1/data  ./genesis.json &> /dev/null
validator2/geth init --datadir validator2/data  ./genesis.json &> /dev/null
validator3/geth init --datadir validator3/data  ./genesis.json &> /dev/null
bootnode/geth init --datadir bootnode/data  ./genesis.json &> /dev/null

cp validator_keystore/validator1-keystore validator1/data/keystore
cp validator_keystore/validator2-keystore validator2/data/keystore
cp validator_keystore/validator3-keystore validator3/data/keystore

touch log-bootnode.log && touch log-validator1.log && touch log-validator2.log && touch log-validator3.log