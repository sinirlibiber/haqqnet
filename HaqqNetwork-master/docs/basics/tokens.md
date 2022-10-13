<!--
order: 5
-->

# Tokens

Learn about the the different types of tokens available in Haqq. {synopsis}

## Introduction

Haqq is a Cosmos SDK-based chain with full EVM support. Because of this architecture, tokens and assets in the network may come from different independent sources: the `bank` module and the `evm` module.

## Cosmos Coins

Accounts can own SDK coins in their balance, which are used for operations with other Cosmos modules and transactions. Examples of these are using the coins for staking, IBC transfers, governance deposits and EVM.

### Islamic Coin (ISLM)

[Islamic Coin](https://islamiccoin.net) (ISLM) is a native currency of Haqq.

The denomination used for staking, governance and gas consumption on the EVM is the ISLM. The ISLM provides the utility of: securing the Proof-of-Stake chain, token used for governance proposals, fee distribution and as a mean of gas for running smart contracts on the EVM.

Haqq uses [Atto](https://en.wikipedia.org/wiki/Atto-) ISLM as the base denomination to maintain parity with Ethereum.

$$1 ISLM = 1 ~ * ~ 10^{18} aISLM$$

This matches Ethereum denomination of:

$$1 ETH = 1 ~ * ~ 10^{18} wei$$

### EVM Tokens

Haqq is compatible with ERC20 tokens and other non-fungible token standards (EIP721, EIP1155)
that are natively supported by the EVM.
