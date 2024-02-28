# zkwasm-scroll-error-reproduce

## Setup

Install dependencies

```bash
npm install
```

Modify `config.ts` to add a valid `privateKey` and/or alternative RPC urls if necessary

Build to compile typescript

```bash
npm run build
```

Run the script to reproduce the error

```bash
npm run start
```

## Expected failure

The script will attempt to verify the proof on Sepolia with 2 separate Contracts with address A and B. These should both succeed.

The script will then attempt to verify the proof on Scroll Testnet. This should fail with the `missing revert data` during `eth_estimateGas` rpc call.
