# OpenZeppelin "Hitchhikers guide to smart contracts" Project, Updated

This the project described in OpenZeppelins tutorial https://blog.openzeppelin.com/the-hitchhikers-guide-to-smart-contracts-in-ethereum-848f08001f05/ .

Changes have been made to work with solidity 0.5.16.

## Running

Instead of using testrpc, use `ganache-cli` (from npm). The packged truffle configuration file works with ganache defaults.

Instead instantiating the deployed smart contract with:

`var poe = ProofOfExistence1.at(ProofOfExistence1.address)`

Use 

`var poe = await ProofOfExistence1.deployed()`

Everything else from the tutorial's truffle console is the same
