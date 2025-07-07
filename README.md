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

### Create a New Foundry Project

```shell
$ forge init
```

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

Go through
https://eips.ethereum.org/EIPS/eip-721

Go through OpenZeppelin
https://github.com/OpenZeppelin/openzeppelin-contracts/tree/master/contracts/token/ERC721

## Install OpenZeppelin Contract

```shell
$ forge install OpenZeppelin/openzeppelin-contracts
```

Do remappings on foundry.toml

## IPFS

Install IPFS Desktop and IPFS Companion on Chrome browser

For browsers like Chrome, we have to use an IPFS Gateway, 
because we have to access ipfs via a gateway.
https://ipfs.io/ipfs/hashcode

For example, use hash from the github:
https://ipfs.io/ipfs/bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4
