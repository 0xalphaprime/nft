## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```


### Solidity

- [Solidity](https://solidity.readthedocs.io/en/v0.5.3/)
- [FCC Solidity Handbook](https://www.freecodecamp.org/news/learn-solidity-handbook/)
- [Foundry Docs](https://book.getfoundry.sh/)
- [Chainlink Docs](https://docs.chain.link/)
- [OpenZeppelin Docs](https://docs.openzeppelin.com/contracts/4.x/)


#### Order of Contract Layout

``` solidity
// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
```

#### CEI: Checks-Effects-Interactions

**design framework for writing secure smart contracts**

- Checks: Check for valid conditions
- Effects: Change state variables
- Interactions: Interact with other contracts

follow this order to avoid:

**re-entrancy attacks (need more info here, but I've heard of this class of attack many times)**


// tests  -  [//arrange //act  //assert]

`forge coverage --report debug > coverage.txt`

Tests 
// unit tests
// integration tests
// forked tests 
// staging tests


### Patrick Collins

- [GitHub Repo Link](https://github.com/Cyfrin/foundry-full-course-f23)
- [GitHub Chainlink Brownie Contracts](https://github.com/smartcontractkit/chainlink-brownie-contracts)
- Ethereum JSON-RPC Specs
    - [Methods Reference Link](https://ethereum.github.io/execution-apis/api-documentation/)
    - helpful if we want to get into the specific parameters of the methods called/implied through development
- [Ethereum JSON-RPC Specs](https://eth.wiki/json-rpc/API)
    - another one for reference

`foundry devops` - repostiory of scripts to help with devops from Patrick collins 
`forge install Cyfrin/foundry-devops --no-commit`
 - Used with the Interactions script

`lib/openzeppelin-contracts` - openzeppelin contracts library
`forge install OpenZeppelin/openzeppelin-contracts --no-commit`
 - Used with the Interactions script




#### Foundry

- [Foundry Docs](https://book.getfoundry.sh/getting-started/installation)
- Anvil Chain ID => 31337