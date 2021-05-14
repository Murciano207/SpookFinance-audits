# Audits

This repository contains set of audits our smart contracts have gone through.
The slither folder also contains scripts for you to reproduce and validate the results locally if you are interested.

## Smart Contracts

### Polygon

* YOGI: [`-`](#)
* Core Pool Factory: [`0x2Fab27B3B379b550AED296B7Fb48D7EfEAabda57`](https://explorer-mainnet.maticvigil.com/address/0x2Fab27B3B379b550AED296B7Fb48D7EfEAabda57#code)
* BalancerSafeMath \(library\): [`0x11618Ca09485872A7a480d568F2bdF658bd3DDF4`](https://explorer-mainnet.maticvigil.com/address/0x11618Ca09485872A7a480d568F2bdF658bd3DDF4#code)
* RightsManager \(library\): [`0x71aEC9E1D7Aa40D9f6cCC7b7001Fe8d16a92d42C`](https://explorer-mainnet.maticvigil.com/address/0x71aEC9E1D7Aa40D9f6cCC7b7001Fe8d16a92d42C#code)
* SmartPoolManager \(library\): [`0xAe074EEFa17Ba0891B2Fe7eCd6bCE20818e6C0b6`](https://explorer-mainnet.maticvigil.com/address/0xAe074EEFa17Ba0891B2Fe7eCd6bCE20818e6C0b6#code)
* Smart Pool Factory \(CRPFactory\): [`0xad346F5c54De58A1B3404A10C98160d2a8951000`](https://explorer-mainnet.maticvigil.com/address/0xad346F5c54De58A1B3404A10C98160d2a8951000#code)
* Multicall: [`0x7B23A56572cBC04035da7852a5427066EC2C2040`](https://explorer-mainnet.maticvigil.com/address/0x7B23A56572cBC04035da7852a5427066EC2C2040#code)
* PoolState: [`0x0e0042Ffb7D97856aE39d71eeceB4E5853bA41Ac`](https://explorer-mainnet.maticvigil.com/address/0x0e0042Ffb7D97856aE39d71eeceB4E5853bA41Ac#code)
* BActions: [`0xcd30F8eeBEa878c7967D86dE5C5Dac7EE18cdd14`](https://explorer-mainnet.maticvigil.com/address/0xcd30F8eeBEa878c7967D86dE5C5Dac7EE18cdd14#code)
* Exchange Proxy: [`0x11bC5d49429eD36ac62F93b523235cd76e022900`](https://explorer-mainnet.maticvigil.com/address/0x11bC5d49429eD36ac62F93b523235cd76e022900#code)
* Onchain Registry: [`0xbF9fdFBF1106DC38a86398E051981ADAffC47c16`](https://explorer-mainnet.maticvigil.com/address/0xbF9fdFBF1106DC38a86398E051981ADAffC47c16#code)

### BSC

* YOGI: [`-`](#)
* Core Pool Factory: [`0x2Fab27B3B379b550AED296B7Fb48D7EfEAabda57`](https://bscscan.com/address/0x2Fab27B3B379b550AED296B7Fb48D7EfEAabda57#code)
* BalancerSafeMath \(library\): [`0x11618Ca09485872A7a480d568F2bdF658bd3DDF4`](https://bscscan.com/address/0x11618Ca09485872A7a480d568F2bdF658bd3DDF4#code)
* RightsManager \(library\): [`0x71aEC9E1D7Aa40D9f6cCC7b7001Fe8d16a92d42C`](https://bscscan.com/address/0x71aEC9E1D7Aa40D9f6cCC7b7001Fe8d16a92d42C#code)
* SmartPoolManager \(library\): [`0xAe074EEFa17Ba0891B2Fe7eCd6bCE20818e6C0b6`](https://bscscan.com/address/0xAe074EEFa17Ba0891B2Fe7eCd6bCE20818e6C0b6#code)
* Smart Pool Factory \(CRPFactory\): [`0xad346F5c54De58A1B3404A10C98160d2a8951000`](https://bscscan.com/address/0xad346F5c54De58A1B3404A10C98160d2a8951000#code)
* Multicall: [`0x88a85d5B9358DAb64D1Ca6d49A0BBF8fC621A8F8`](https://bscscan.com/address/0x88a85d5B9358DAb64D1Ca6d49A0BBF8fC621A8F8#code)
* PoolState: [`0x0e0042Ffb7D97856aE39d71eeceB4E5853bA41Ac`](https://bscscan.com/address/0x0e0042Ffb7D97856aE39d71eeceB4E5853bA41Ac#code)
* BActions: [`0xcd30F8eeBEa878c7967D86dE5C5Dac7EE18cdd14`](https://bscscan.com/address/0xcd30F8eeBEa878c7967D86dE5C5Dac7EE18cdd14#code)
* Exchange Proxy: [`0x9e164aFB84830ab4f7e037e1422A0aeD3A401B0C`](https://bscscan.com/address/0x9e164aFB84830ab4f7e037e1422A0aeD3A401B0C#code)
* Onchain Registry: [`0xbF9fdFBF1106DC38a86398E051981ADAffC47c16`](https://bscscan.com/address/0xbF9fdFBF1106DC38a86398E051981ADAffC47c16#code)


# Slither

https://github.com/crytic/slither

Slither is a Solidity static analysis framework written in Python 3. It runs a suite of vulnerability detectors, prints visual information about contract details, and provides an API to easily write custom analyses. Slither enables developers to find vulnerabilities, enhance their code comprehension, and quickly prototype custom analyses.

## Usage 

Slither requires Python 3.6+ and solc, the Solidity compiler.

$ ./slither/install.sh
$ ./slither/generate.sh