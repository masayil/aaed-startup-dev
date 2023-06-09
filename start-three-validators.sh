#!/bin/env bash


bootnode/geth --datadir=bootnode/data --syncmode=full --networkid=11360 --nodekeyhex=c199a45cba57765a132004bf330ad868ef51335b64e0693458d2282c67f2d24b --maxpeers=512 --light.maxpeers=256 --light.serve=50 --miner.gaslimit=30000000 --txpool.accountslots=256 --txpool.globalslots=10000 --txpool.accountqueue=128 --txpool.globalqueue=5000 --port=20000 --authrpc.port=30000 --http --http.port=8545 --http.api="eth,net,web3,txpool,personal" &>> log-bootnode.log  &
echo "==启动bootnode成功==="
sleep 2
validator1/geth --datadir=validator1/data --syncmode=full --networkid=11360 --mine --allow-insecure-unlock --unlock=9cc2dea8a8353c3108d021e2228b77cb11c05b37 --password=password.txt --config=config.toml --miner.gaslimit=30000000 --txpool.accountslots=256 --txpool.globalslots=10000 --txpool.accountqueue=128 --txpool.globalqueue=5000 --miner.etherbase=9cc2dea8a8353c3108d021e2228b77cb11c05b37  --port=20001  --authrpc.port=30001 &>> log-validator1.log &
echo "==启动validator1成功==="
sleep 2
validator2/geth --datadir=validator2/data --syncmode=full --networkid=11360 --mine --allow-insecure-unlock --unlock=803a106aba7893e9785b9fdaf6cb1a9e7950b76e --password=password.txt --config=config.toml --miner.gaslimit=30000000 --txpool.accountslots=256 --txpool.globalslots=10000 --txpool.accountqueue=128 --txpool.globalqueue=5000 --miner.etherbase=803a106aba7893e9785b9fdaf6cb1a9e7950b76e  --port=20002  --authrpc.port=30002 &>> log-validator2.log &
echo "==启动validator2成功==="
sleep 2
validator3/geth --datadir=validator3/data --syncmode=full --networkid=11360 --mine --allow-insecure-unlock --unlock=ecf92d03dc07e1e59ab2753f951f041c3af88179 --password=password.txt --config=config.toml --miner.gaslimit=30000000 --txpool.accountslots=256 --txpool.globalslots=10000 --txpool.accountqueue=128 --txpool.globalqueue=5000 --miner.etherbase=ecf92d03dc07e1e59ab2753f951f041c3af88179  --port=20003 --authrpc.port=30003 &>> log-validator3.log &
echo "==启动validator3成功==="
