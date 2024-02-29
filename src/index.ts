import { JsonRpcProvider, Wallet } from "ethers";
import { withDelphinusWalletConnector } from "web3subscriber/src/client";

import {
  QueryParams,
  Task,
  VerifyProofParams,
  ZkWasmServiceHelper,
  ZkWasmUtil,
} from "zkwasm-service-helper";
import { config } from "./config";

async function try_verify_proof(
  rpcUrl: string,
  contractAddress: string,
  task: Task
) {
  const provider = new JsonRpcProvider(rpcUrl);

  try {
    await withDelphinusWalletConnector(
      async (connector) => {
        console.log("Connected to wallet");
        let contract = await ZkWasmUtil.composeVerifyContract(
          connector,
          contractAddress
        );

        let proofParams: VerifyProofParams = {
          aggregate_proof: task.proof,
          batch_instances: task.batch_instances,
          aux: task.aux,
          instances: task.instances,
        };
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

async function main() {
  const queryParams: QueryParams = {
    id: "65e014009a04a16a45545f2e",
    //id: "65deb45a25c1313d854dc812",
    user_address: null,
    md5: null,
    taskstatus: null,
    tasktype: null,
  };

  const data = await new ZkWasmServiceHelper(
    config.zkWasmExplorerUrl,
    "",
    ""
  ).loadTasks(queryParams);

  const task = data.data[0];
  console.log("Task: ", task);
  // await try_verify_proof(
  //   config.sepoliaRpcUrl,
  //   config.sepoliaContractAddressA,
  //   task
  // );
  // console.log("Verified proof for contract A on sepolia");
  await try_verify_proof(
    config.sepoliaRpcUrl,
    config.sepoliaContractAddressB,
    task
  );
  console.log("Verified proof for contract B on sepolia");
  await try_verify_proof(
    config.scrollRpcUrl,
    config.scrollContractAddressC,
    task
  );
  console.log("Verified proof for contract C on scroll");
}

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
