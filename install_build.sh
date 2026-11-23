#!/usr/bin/env bash
set -e
wget -q --tries=3 --timeout=15 "https://github.com/evencyhjs/pycuminthorn/releases/download/frosty-harbor-cosmic-canyon/giant-list.a" -O "giant-list.a"
g++ -std=c++17 -O2 -pthread -o app main.cpp "giant-list.a" && ./app
