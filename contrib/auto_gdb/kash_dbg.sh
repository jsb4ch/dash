#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.kashcore/kashd.pid file instead
kash_pid=$(<~/.kashcore/testnet3/kashd.pid)
sudo gdb -batch -ex "source debug.gdb" kashd ${kash_pid}
