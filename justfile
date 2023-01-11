# Autoload a .env if one exists
set dotenv-load

# export HARDHAT_NETWORK := env_var_or_default("HARDHAT_NETWORK", "localhost")

# This is the default tast
default:
  @just --list

# This is how to alias a task
# alias b := build

# Install dependencies
install:
  @forge install
# @forge install transmissions11/solmate
# @forge install Openzeppelin/openzeppelin-contracts
# @forge install OpenZeppelin/openzeppelin-contracts-upgradeable --no-commit

# Push to github
push:
  @forge test
  @forge fmt
  @forge snapshot
  @forge fmt --check
  @forge snapshot --check
  @git push

# Run forge unit tests in a fork environment while identifying contract names
test-fork:
  @forge test --fork-url <your_rpc_url> --etherscan-api-key <your_etherscan_api_key>

# Create a contract
create contract="." :
  @forge create {{contract}} --rpc-url=$eth_rpc_url3 --private-key=$FOUNDRY_PRIVATE_KEY2
# @forge create {{contract}} --rpc-url=$RPC_URL --private-key=$PRIVATE_KEY --constructor-args <name> <symbol>
# @forge create --rpc-url <your_rpc_url> --private-key <your_private_key> src/MyContract.sol:MyContract
# @forge create --rpc-url <your_rpc_url> --constructor-args "ForgeUSD" "FUSD" 18 1000000000000000000000 --private-key <your_private_key> src/MyToken.sol:MyToken --etherscan-api-key <your_etherscan_api_key> --verify

# send a transaction
send method="."  args="." args1="." args2="." args3="." args4=".":
  @cast send --rpc-url=$eth_rpc_url3 $TARGET_ADDRESS {{method}} {{args}} {{args1}} {{args2}} {{args3}} {{args4}} --private-key=$FOUNDRY_PRIVATE_KEY2

# send a transaction
call method="."  args=".":
 @cast call --rpc-url=$eth_rpc_url3 $TARGET_ADDRESS {{method}} {{args}}

# Run forge unit tests
# test contract="." test="." *flags="":
#	 Using date here to give some randomness to tests that use block.timestamp
#	 @forge test --allow-failure --block-timestamp `date '+%s'` --match-contract {{contract}} --match-test {{test}} {{flags}}
