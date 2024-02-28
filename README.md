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

The script will attempt to verify the proof on Sepolia with 2 separate Contracts with address A and B, which A is our current explorer test server using, B is using the contract and recompile and deploy. These should both succeed.

C is the address on scroll testnet and use the contract as same as B and deploy on scroll testnet. 
The script will then attempt to verify the proof on Scroll Testnet C. This should fail with the `missing revert data` during `eth_estimateGas` rpc call.
