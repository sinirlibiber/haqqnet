#!/usr/bin/env bash

if [ ! -d "./modules" ]; then
  echo "Modules directory not exists."
  mkdir -p modules
fi

# Include the specs from Ethermint

if [ ! -d "./modules/evm" ]; then
  echo "Directory emv/feemarket not exists."

  git clone https://github.com/evmos/ethermint.git
  mv ethermint/x/evm/spec/ ./modules/evm
  mv ethermint/x/feemarket/spec/ ./modules/feemarket
  rm -rf ethermint
fi

if [ ! -d "./modules/auth" ]; then
  echo "Directory auth not exists."
  # Include the specs from Cosmos SDK
  git clone -b v0.45.8 https://github.com/cosmos/cosmos-sdk.git
  mv cosmos-sdk/x/auth/spec/ ./modules/auth
  mv cosmos-sdk/x/bank/spec/ ./modules/bank
  mv cosmos-sdk/x/crisis/spec/ ./modules/crisis
  mv cosmos-sdk/x/distribution/spec/ ./modules/distribution
  mv cosmos-sdk/x/gov/spec/ ./modules/gov
  mv cosmos-sdk/x/slashing/spec/ ./modules/slashing
  mv cosmos-sdk/x/staking/spec/ ./modules/staking
  rm -rf cosmos-sdk
fi

if [ ! -d "./modules/transfer" ]; then
  echo "Directory transfer not exists."

  # Include the specs from IBC go
  git clone https://github.com/cosmos/ibc-go.git --branch v3.1.0 --single-branch
  mv ibc-go/modules/apps/transfer/spec/ ./modules/transfer
  rm -rf ibc-go
fi
