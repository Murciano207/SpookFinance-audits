#!/bin/bash
set -ex

# Run cmd and log
run () {
  printf "$ $1\n\n" &>> $2
  $1 &>> $2
  printf "\n\n" &>> $2
}

# Cleanup
pushd slither
([ -d tmp ] && rm -f tmp/*) || mkdir tmp
[ -d reports ] || mkdir reports

# Yogi.sol
solc-select use 0.8.3
run "slither contracts/Yogi.sol --print human-summary" tmp/Yogi.sol.ansi
run "slither-check-erc contracts/Yogi.sol Yogi" tmp/Yogi.sol.ansi
run "slither contracts/Yogi.sol --print contract-summary" tmp/Yogi.sol.ansi
cat tmp/Yogi.sol.ansi | ansi2html > reports/Yogi.sol.html

popd