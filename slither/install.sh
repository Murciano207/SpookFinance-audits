#!/bin/bash
set -ex

pip3 install slither-analyzer
pip3 install solc-select
solc-select install 0.8.3 0.6.12 0.5.17