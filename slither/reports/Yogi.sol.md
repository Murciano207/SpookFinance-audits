$ slither contracts/Yogi.sol --print human-summary

INFO:Printers:
Compiled with solc
Number of lines: 421 (+ 0 in dependencies, + 0 in tests)
Number of assembly lines: 0
Number of contracts: 4 (+ 0 in dependencies, + 0 tests) 

Number of optimization issues: 11
Number of informational issues: 6
Number of low issues: 0
Number of medium issues: 0
Number of high issues: 0

ERCs: ERC20

+------+-------------+-------+--------------------+--------------+----------+
| Name | # functions |  ERCS |     ERC20 info     | Complex code | Features |
+------+-------------+-------+--------------------+--------------+----------+
| Yogi |      26     | ERC20 |     No Minting     |      No      |          |
|      |             |       | Approve Race Cond. |              |          |
|      |             |       |                    |              |          |
+------+-------------+-------+--------------------+--------------+----------+
INFO:Slither:contracts/Yogi.sol analyzed (4 contracts)
INFO:Slither:Use https://crytic.io/ to get access to additional detectors and Github integration


$ slither contracts/Yogi.sol

INFO:Detectors:
Pragma version^0.8.0 (contracts/Yogi.sol#7) necessitates a version too recent to be trusted. Consider deploying with 0.6.12/0.7.6
Pragma version^0.8.0 (contracts/Yogi.sol#86) necessitates a version too recent to be trusted. Consider deploying with 0.6.12/0.7.6
Pragma version^0.8.0 (contracts/Yogi.sol#112) necessitates a version too recent to be trusted. Consider deploying with 0.6.12/0.7.6
Pragma version^0.8.0 (contracts/Yogi.sol#415) necessitates a version too recent to be trusted. Consider deploying with 0.6.12/0.7.6
solc-0.8.3 is not recommended for deployment
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Redundant expression "this (contracts/Yogi.sol#104)" inContext (contracts/Yogi.sol#98-107)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#redundant-statements
INFO:Detectors:
name() should be declared external:
	- ERC20.name() (contracts/Yogi.sol#166-168)
symbol() should be declared external:
	- ERC20.symbol() (contracts/Yogi.sol#174-176)
decimals() should be declared external:
	- ERC20.decimals() (contracts/Yogi.sol#191-193)
totalSupply() should be declared external:
	- ERC20.totalSupply() (contracts/Yogi.sol#198-200)
balanceOf(address) should be declared external:
	- ERC20.balanceOf(address) (contracts/Yogi.sol#205-207)
transfer(address,uint256) should be declared external:
	- ERC20.transfer(address,uint256) (contracts/Yogi.sol#217-220)
allowance(address,address) should be declared external:
	- ERC20.allowance(address,address) (contracts/Yogi.sol#225-227)
approve(address,uint256) should be declared external:
	- ERC20.approve(address,uint256) (contracts/Yogi.sol#236-239)
transferFrom(address,address,uint256) should be declared external:
	- ERC20.transferFrom(address,address,uint256) (contracts/Yogi.sol#254-262)
increaseAllowance(address,uint256) should be declared external:
	- ERC20.increaseAllowance(address,uint256) (contracts/Yogi.sol#276-279)
decreaseAllowance(address,uint256) should be declared external:
	- ERC20.decreaseAllowance(address,uint256) (contracts/Yogi.sol#295-301)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:contracts/Yogi.sol analyzed (4 contracts with 72 detectors), 17 result(s) found
INFO:Slither:Use https://crytic.io/ to get access to additional detectors and Github integration


$ slither-check-erc contracts/Yogi.sol Yogi

# Check Yogi

## Check functions
[✓] totalSupply() is present
	[✓] totalSupply() -> () (correct return value)
	[✓] totalSupply() is view
[✓] balanceOf(address) is present
	[✓] balanceOf(address) -> () (correct return value)
	[✓] balanceOf(address) is view
[✓] transfer(address,uint256) is present
	[✓] transfer(address,uint256) -> () (correct return value)
	[✓] Transfer(address,address,uint256) is emitted
[✓] transferFrom(address,address,uint256) is present
	[✓] transferFrom(address,address,uint256) -> () (correct return value)
	[✓] Transfer(address,address,uint256) is emitted
[✓] approve(address,uint256) is present
	[✓] approve(address,uint256) -> () (correct return value)
	[✓] Approval(address,address,uint256) is emitted
[✓] allowance(address,address) is present
	[✓] allowance(address,address) -> () (correct return value)
	[✓] allowance(address,address) is view
[✓] name() is present
	[✓] name() -> () (correct return value)
	[✓] name() is view
[✓] symbol() is present
	[✓] symbol() -> () (correct return value)
	[✓] symbol() is view
[✓] decimals() is present
	[✓] decimals() -> () (correct return value)
	[✓] decimals() is view

## Check events
[✓] Transfer(address,address,uint256) is present
	[✓] parameter 0 is indexed
	[✓] parameter 1 is indexed
[✓] Approval(address,address,uint256) is present
	[✓] parameter 0 is indexed
	[✓] parameter 1 is indexed


	[✓] Yogi has increaseAllowance(address,uint256)


$ slither contracts/Yogi.sol --print contract-summary

INFO:Printers:
+ Contract IERC20
  - From IERC20
    - allowance(address,address) (external)
    - approve(address,uint256) (external)
    - balanceOf(address) (external)
    - totalSupply() (external)
    - transfer(address,uint256) (external)
    - transferFrom(address,address,uint256) (external)

+ Contract Context
  - From Context
    - _msgData() (internal)
    - _msgSender() (internal)

+ Contract ERC20
  - From Context
    - _msgData() (internal)
    - _msgSender() (internal)
  - From ERC20
    - _approve(address,address,uint256) (internal)
    - _beforeTokenTransfer(address,address,uint256) (internal)
    - _burn(address,uint256) (internal)
    - _mint(address,uint256) (internal)
    - _transfer(address,address,uint256) (internal)
    - allowance(address,address) (public)
    - approve(address,uint256) (public)
    - balanceOf(address) (public)
    - constructor(string,string) (public)
    - decimals() (public)
    - decreaseAllowance(address,uint256) (public)
    - increaseAllowance(address,uint256) (public)
    - name() (public)
    - symbol() (public)
    - totalSupply() (public)
    - transfer(address,uint256) (public)
    - transferFrom(address,address,uint256) (public)

+ Contract Yogi (Most derived contract)
  - From ERC20
    - _approve(address,address,uint256) (internal)
    - _beforeTokenTransfer(address,address,uint256) (internal)
    - _burn(address,uint256) (internal)
    - _mint(address,uint256) (internal)
    - _transfer(address,address,uint256) (internal)
    - allowance(address,address) (public)
    - approve(address,uint256) (public)
    - balanceOf(address) (public)
    - constructor(string,string) (public)
    - decimals() (public)
    - decreaseAllowance(address,uint256) (public)
    - increaseAllowance(address,uint256) (public)
    - name() (public)
    - symbol() (public)
    - totalSupply() (public)
    - transfer(address,uint256) (public)
    - transferFrom(address,address,uint256) (public)
  - From Context
    - _msgData() (internal)
    - _msgSender() (internal)
  - From Yogi
    - constructor(uint256) (public)

INFO:Slither:contracts/Yogi.sol analyzed (4 contracts)
INFO:Slither:Use https://crytic.io/ to get access to additional detectors and Github integration


