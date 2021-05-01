#!/bin/bash
set -x

# Aux functions
run () {
  printf "$ $1\n\n" &>> $2
  $1 &>> $2
  printf "\n\n" &>> $2
}

format () {
  cat tmp/$1.ansi | ansi2html > reports/$1.html
}

# Audit methods
erc20 () {
  solc-select use $3
  run "slither contracts/$1 --print human-summary" tmp/$1.ansi
  run "slither contracts/$1" tmp/$1.ansi
  run "slither-check-erc contracts/$1 $2" tmp/$1.ansi
  run "slither contracts/$1 --print contract-summary" tmp/$1.ansi
  format $1
}

audit () {
  solc-select use $2
  run "slither contracts/$1 --print human-summary" tmp/$1.ansi
  run "slither contracts/$1" tmp/$1.ansi
  format $1
}

# Cleanup
pushd slither
([ -d tmp ] && rm -f tmp/*) || mkdir tmp
[ -d reports ] || mkdir reports

# Individual reports
erc20 Yogi.sol Yogi 0.8.3 
audit BActions.sol 0.6.12
audit BFactory.sol 0.5.17
audit BRegistry.sol 0.5.17
audit CRPFactory.sol 0.6.12
audit ExchangeProxy.sol 0.5.17
audit MerkleRedeem.sol 0.6.12
audit Multicall.sol 0.5.17
audit PoolState.sol 0.5.17
audit ProxyRegistry.sol 0.5.17

popd