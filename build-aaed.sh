#!/bin/env bash

if [ ! -d "aaed" ]; then
    echo "==没有找到旧的aaed仓库=="
    echo "===克隆新的aaed仓库==="
    git clone -b dev https://github.com/Ankr-Shanghai/aaed.git
else
    echo "==删除旧的aaed仓库=="
    rm -rf aaed
    echo "===克隆新的aaed仓库==="
    git clone -b dev https://github.com/Ankr-Shanghai/aaed.git
fi

cd aaed && make geth
    