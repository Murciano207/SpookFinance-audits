#!/bin/bash
set -ex

pip3 install slither-analyzer
pip3 install solc-select
pip3 install ansi2html
solc-select install 0.8.4 0.6.12 0.5.17