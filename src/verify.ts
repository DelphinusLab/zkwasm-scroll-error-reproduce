import { JsonRpcProvider, Wallet } from "ethers";
import { withDelphinusWalletConnector } from "web3subscriber/src/client";
import { VerifyProofParams, ZkWasmUtil } from "zkwasm-service-helper";
import { config } from "./config";
import fs from "fs/promises";
import path from "path";

export async function try_verify_proof(
  rpcUrl: string,
  contractAddress: string
) {
  const provider = new JsonRpcProvider(rpcUrl);
  let network = await provider.getNetwork();
  console.log("network: ", network.chainId, network.name, network);
  console.log("rpcUrl: ", rpcUrl);
  console.log("contractAddress: ", contractAddress);
  let proof = await readFileAsBytes("proofs/batchsample.0.transcript.data");
  let instances = await readFileAsBytes("proofs/test1.0.instance.data");
  let batch_instances = await readFileAsBytes(
    "proofs/batchsample.0.instance.data"
  );
  let aux = await readFileAsBytes("proofs/batchsample.0.aux.data");

  try {
    await withDelphinusWalletConnector(
      async (connector) => {
        console.log("Connected to wallet");

        let contract = await ZkWasmUtil.composeVerifyContract(
          connector,
          contractAddress
        );

        let proofParams: VerifyProofParams = {
          aggregate_proof: proof,
          batch_instances: batch_instances,
          aux: aux,
          instances: instances,
        };
        console.log(proofParams);
        console.log("Verifying proof...");
        let tx = await ZkWasmUtil.verifyProof(
          contract.getEthersContract(),
          proofParams
        );
        // wait for tx to be mined, can add no. of confirmations as arg
        let receipt = await tx.wait();
        console.log(receipt);
      },
      provider,
      config.privateKey
    );
  } catch (e) {
    console.error(e);
  }
}
async function readFileAsBytes(filePath: string) {
  try {
    // Read the file
    const data = await fs.readFile(filePath);
    // Return the buffer or convert it to the format your application requires
    return data;
  } catch (error) {
    console.error("Error reading file:", error);
    throw error; // Re-throw to handle it in the calling context
  }
}

export async function main() {
  // Copy proof output files from the continuation-batcher to the current directory
  const srcDir = path.join(
    __dirname,
    "/batcher-tests/continuation-batcher/output"
  );
  const destDir = path.join(__dirname, "/proofs");
  await fs.mkdir(destDir, { recursive: true });

  // Copy specific files over including
  // batchsample.0.transcript.data
  // batchsample.0.instance.data
  // batchsample.0.aux.data
  // test1.0.instance.data (single proof data)

  const files = [
    "batchsample.0.transcript.data",
    "batchsample.0.instance.data",
    "batchsample.0.aux.data",
    "test1.0.instance.data",
  ];

  for (const file of files) {
    const src = path.join(srcDir, file);
    const dest = path.join(destDir, file);
    await fs.copyFile(src, dest);
  }

  await try_verify_proof(
    config.sepoliaRpcUrl,
    (
      await loadDeployments("sepolia")
    ).AggregatorVerifier
  );

  await try_verify_proof(
    config.scrollRpcUrl,
    (
      await loadDeployments("scrolltestnet")
    ).AggregatorVerifier
  );
  console.log("Done");
}

// network should match the hardhatconfig network name
const loadDeployments = async (network: string) => {
  const deployments = await import(
    `../batcher-tests/scripts/deployedContracts_${network}.json`
  );
  return deployments;
};

main()
  .then(
    () => {
      console.log("Done");
    },
    (e) => {
      console.error(e);
    }
  )
  .catch((e) => {
    console.error(e);
  });
