import { JsonRpcProvider, Wallet } from "ethers";
import { withDelphinusWalletConnector } from "web3subscriber/src/client";
import { VerifyProofParams, ZkWasmUtil } from "zkwasm-service-helper";
import { config } from "./config";
import fs from "fs/promises";
import path from "path";

// Files
const proof_file = "batchsample.0.transcripts.data";
//const instances_file = "test_circuit.0.instance.data";
const instances_file_1 = "test_circuit.0.instance.data";
const instances_file_2 = "test_circuit.1.instance.data";
const batch_instances_file = "batchsample.0.shadowinstance.data";
//const batch_instances_file = "batchsample.0.instance.data";
const aux_file = "batchsample.0.aux.data";

export async function try_verify_proof(
  rpcUrl: string,
  contractAddress: string
) {
  const provider = new JsonRpcProvider(rpcUrl);
  let network = await provider.getNetwork();
  console.log("network: ", network.chainId, network.name, network);
  console.log("rpcUrl: ", rpcUrl);
  console.log("contractAddress: ", contractAddress);
  let proof = await readFileAsBytes("proofs/" + proof_file);
  let instance_1 = await readFileAsBytes("proofs/" + instances_file_1);
  let instance_2 = await readFileAsBytes("proofs/" + instances_file_2);
  let batch_instances = await readFileAsBytes("proofs/" + batch_instances_file);
  let aux = await readFileAsBytes("proofs/" + aux_file);

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
          instances: [instance_1, instance_2],
        };
        console.log(proofParams);
        console.log("Verifying proof...");
        let tx = await ZkWasmUtil.verifyProof(
          contract.getEthersContract(),
          proofParams
        );
        console.log("Transaction created. Tx Hash: ", tx.hash);
        // wait for tx to be mined, can add no. of confirmations as arg
        let receipt = await tx.wait();
        console.log("Transaction mined.");
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
    "..",
    "/batcher-tests/continuation-batcher/output"
  );
  const destDir = path.join(__dirname, "..", "/proofs");
  await fs.mkdir(destDir, { recursive: true });

  // Copy specific files over including
  // batchsample.0.transcript.data
  // batchsample.0.shadowinstance.data
  // batchsample.0.aux.data
  // test1.0.instance.data (single proof data)

  const files = [proof_file, instances_file_1, instances_file_2, batch_instances_file, aux_file];

  for (const file of files) {
    const src = path.join(srcDir, file);
    const dest = path.join(destDir, file);
    // Default will overwrite the file if it exists
    await fs.copyFile(src, dest);
  }

  await try_verify_proof(
    config.sepoliaRpcUrl,
    (
      await loadDeployments("sepolia")
    ).AggregatorVerifier
  );
  console.log(
    "-------------------------------Sepolia Success-------------------------------"
  );
  /*
  await try_verify_proof(
    config.scrollRpcUrl,
    (
      await loadDeployments("scrolltestnet")
    ).AggregatorVerifier
  );*/
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
