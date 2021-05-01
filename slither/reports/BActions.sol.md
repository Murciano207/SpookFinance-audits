$ slither contracts/BActions.sol --print human-summary

INFO:Printers:
Compiled with solc
Number of lines: 386 (+ 0 in dependencies, + 0 in tests)
Number of assembly lines: 0
Number of contracts: 9 (+ 0 in dependencies, + 0 tests) 

Number of optimization issues: 0
Number of informational issues: 0
Number of low issues: 17
Number of medium issues: 2
Number of high issues: 0


+------------------------+-------------+------+------------+--------------+--------------------+
|          Name          | # functions | ERCS | ERC20 info | Complex code |      Features      |
+------------------------+-------------+------+------------+--------------+--------------------+
|     RightsManager      |      0      |      |            |      No      |    AbiEncoderV2    |
|         BPool          |      18     |      |            |      No      |    AbiEncoderV2    |
|        BFactory        |      1      |      |            |      No      |    AbiEncoderV2    |
| ConfigurableRightsPool |      21     |      |            |      No      |    AbiEncoderV2    |
|       CRPFactory       |      1      |      |            |      No      |    AbiEncoderV2    |
|        BActions        |      21     |      |            |     Yes      | Tokens interaction |
|                        |             |      |            |              |    AbiEncoderV2    |
+------------------------+-------------+------+------------+--------------+--------------------+
INFO:Slither:contracts/BActions.sol analyzed (9 contracts)
INFO:Slither:Use https://crytic.io/ to get access to additional detectors and Github integration


$ slither contracts/BActions.sol

INFO:Detectors:
BActions._safeApprove(ERC20,address,uint256) (contracts/BActions.sol#357-362) ignores return value by token.approve(spender,0) (contracts/BActions.sol#359)
BActions._safeApprove(ERC20,address,uint256) (contracts/BActions.sol#357-362) ignores return value by token.approve(spender,amount) (contracts/BActions.sol#361)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-return
INFO:Detectors:
BActions.create(BFactory,address[],uint256[],uint256[],uint256,bool).finalize (contracts/BActions.sol#116) shadows:
	- BActions.finalize(BPool) (contracts/BActions.sol#265-268) (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
BActions.create(BFactory,address[],uint256[],uint256[],uint256,bool) (contracts/BActions.sol#110-137) has external calls inside a loop: require(bool,string)(token.transferFrom(msg.sender,address(this),balances[i]),ERR_TRANSFER_FAILED) (contracts/BActions.sol#126)
BActions.create(BFactory,address[],uint256[],uint256[],uint256,bool) (contracts/BActions.sol#110-137) has external calls inside a loop: pool.bind(tokens[i],balances[i],weights[i]) (contracts/BActions.sol#128)
BActions.createSmartPool(CRPFactory,BFactory,ConfigurableRightsPool.PoolParams,ConfigurableRightsPool.CrpParams,RightsManager.Rights) (contracts/BActions.sol#139-177) has external calls inside a loop: require(bool,string)(token.transferFrom(msg.sender,address(this),poolParams.tokenBalances[i]),ERR_TRANSFER_FAILED) (contracts/BActions.sol#163-166)
BActions.setTokens(BPool,address[],uint256[],uint256[]) (contracts/BActions.sol#227-263) has external calls inside a loop: pool.isBound(tokens[i]) (contracts/BActions.sol#238)
BActions.setTokens(BPool,address[],uint256[],uint256[]) (contracts/BActions.sol#227-263) has external calls inside a loop: balances[i] > pool.getBalance(tokens[i]) (contracts/BActions.sol#239)
BActions.setTokens(BPool,address[],uint256[],uint256[]) (contracts/BActions.sol#227-263) has external calls inside a loop: require(bool,string)(token.transferFrom(msg.sender,address(this),balances[i] - pool.getBalance(tokens[i])),ERR_TRANSFER_FAILED) (contracts/BActions.sol#240-243)
BActions.setTokens(BPool,address[],uint256[],uint256[]) (contracts/BActions.sol#227-263) has external calls inside a loop: _safeApprove(token,address(pool),balances[i] - pool.getBalance(tokens[i])) (contracts/BActions.sol#244)
BActions.setTokens(BPool,address[],uint256[],uint256[]) (contracts/BActions.sol#227-263) has external calls inside a loop: pool.rebind(tokens[i],balances[i],denorms[i]) (contracts/BActions.sol#247)
BActions.setTokens(BPool,address[],uint256[],uint256[]) (contracts/BActions.sol#227-263) has external calls inside a loop: token.balanceOf(address(this)) > 0 (contracts/BActions.sol#258)
BActions.setTokens(BPool,address[],uint256[],uint256[]) (contracts/BActions.sol#227-263) has external calls inside a loop: require(bool,string)(token.transfer(msg.sender,token.balanceOf(address(this))),ERR_TRANSFER_FAILED) (contracts/BActions.sol#259)
BActions.setTokens(BPool,address[],uint256[],uint256[]) (contracts/BActions.sol#227-263) has external calls inside a loop: pool.unbind(tokens[i]) (contracts/BActions.sol#249)
BActions.setTokens(BPool,address[],uint256[],uint256[]) (contracts/BActions.sol#227-263) has external calls inside a loop: require(bool,string)(token.transferFrom(msg.sender,address(this),balances[i]),ERR_TRANSFER_FAILED) (contracts/BActions.sol#253)
BActions.setTokens(BPool,address[],uint256[],uint256[]) (contracts/BActions.sol#227-263) has external calls inside a loop: pool.bind(tokens[i],balances[i],denorms[i]) (contracts/BActions.sol#255)
BActions._join(AbstractPool,address[],uint256,uint256[]) (contracts/BActions.sol#364-385) has external calls inside a loop: require(bool,string)(token.transferFrom(msg.sender,address(this),maxAmountsIn[i]),ERR_TRANSFER_FAILED) (contracts/BActions.sol#374)
BActions._join(AbstractPool,address[],uint256,uint256[]) (contracts/BActions.sol#364-385) has external calls inside a loop: token_scope_1.balanceOf(address(this)) > 0 (contracts/BActions.sol#380)
BActions._join(AbstractPool,address[],uint256,uint256[]) (contracts/BActions.sol#364-385) has external calls inside a loop: require(bool,string)(token_scope_1.transfer(msg.sender,token_scope_1.balanceOf(address(this))),ERR_TRANSFER_FAILED) (contracts/BActions.sol#381)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Slither:contracts/BActions.sol analyzed (9 contracts with 72 detectors), 19 result(s) found
INFO:Slither:Use https://crytic.io/ to get access to additional detectors and Github integration


