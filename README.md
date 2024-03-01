# zkwasm-scroll-error-reproduce

# Keccak Update

## Setup

Install dependencies for this directory first and setup submodules for `continuation-batcher`

```bash
npm install
git submodule update --init --recursive
# Install Dependencies in `batcher-tests` to get Hardhat Environemnt setup correctly
cd batcher-tests
npm install
```

## Perform batcher proof and deploy contracts

### Run batcher script to generate Batch Proofs and solidity files

```bash
cd batcher-tests/continuation-batcher
bash test_keccak.sh
```

### Deploy contracts

```bash
cd ../batcher-tests
```

Firstly, add private keys to `hardhat.config.js` for the networks you want to deploy to.

Then run the deploy script to deploy the contracts to the networks

```bash

bash deploy.sh
```

NOTE: Scroll Testnet may have issues with hanging if using previously used private key due to unconfirmed issue with hanging. Use a new private key if this occurs.

Manually, deploy by running the hardhat deploy script if needed

```bash
npx hardhat run scripts/deploy.js --network <network>
```

### Build the verification script

Go back to the root directory of the repo

```bash
cd ../
```

Modify `config.ts` to add a valid `privateKey` and/or alternative RPC urls if necessary.
Notes: Run the verity script to reproduce the error with Scroll Testnet. Scroll Testnet transaction most like hang indefinitely after submitting the transaction.transaction.
As it may hang indefinitely, so better create a new account address to do it each time in order to not affect next testing.

Build to compile typescript

```bash
npm run build
```

Expect sepolia to verify successfully.
Scroll Testnet most like hang indefinitely after submitting the transaction.transaction.

```bash
node dist/verify.js
```

<!-- ### Expected failure with SHA256

The script will attempt to verify the proof on Sepolia with 2 separate Contracts with address A and B. These should both succeed.

The script will then attempt to verify the proof on Scroll Testnet. This should fail with the `missing revert data` during `eth_estimateGas` rpc call. -->
