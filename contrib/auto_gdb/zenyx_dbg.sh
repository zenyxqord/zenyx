#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.zenyxcore/zenyxd.pid file instead
export LC_ALL=C

zenyx_pid=$(<~/.zenyxcore/testnet3/zenyxd.pid)
sudo gdb -batch -ex "source debug.gdb" zenyxd ${zenyx_pid}
