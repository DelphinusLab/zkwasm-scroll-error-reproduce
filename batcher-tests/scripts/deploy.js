// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const { ethers, network } = require("hardhat");
const fs = require("fs");
const path = require("path");

async function main() {
  console.log("Deploying contracts on network: ", network.name);
  // Copy sol files from /continuation-batcher/sol/contracts to /contracts
  // const srcDir = path.join(__dirname, "/continuation-batcher/sol/contracts");
  // const destDir = path.join(__dirname, "/contracts");
  // fs.mkdirSync(destDir, { recursive: true });

  // // Read all files from source directory
  // const files = fs.readdirSync(srcDir);

  // // Filter .sol files and copy them to the destination directory
  // for (const file of files) {
  //   if (file.endsWith(".sol")) {
  //     const srcFile = path.join(srcDir, file);
  //     const destFile = path.join(destDir, file);
  //     fs.copyFileSync(srcFile, destFile);
  //     console.log(`Copied ${file} to ${destDir}`);
  //   }
  // }
  const contracts = {};
  // Deploy AggregatorLib, AggregatorConfig, AggregatorVerifier, and steps
  const AggregatorLib = await ethers.getContractFactory("AggregatorLib");
  const aggregatorLib = await AggregatorLib.deploy();

  console.log("Waiting for deployment - AggregatorLib");
  await aggregatorLib.waitForDeployment();

  console.log("AggregatorLib deployed at", aggregatorLib.target);
  await new Promise((resolve) => setTimeout(resolve, 1000));
  contracts.AggregatorLib = aggregatorLib.target;
  // Deploy AggregatorConfig
  const AggregatorConfig = await ethers.getContractFactory("AggregatorConfig");
  const aggregatorConfig = await AggregatorConfig.deploy();
  console.log("Waiting for deployment - AggregatorConfig");
  await aggregatorConfig.waitForDeployment();

  console.log("AggregatorConfig deployed at", aggregatorConfig.target);
  await new Promise((resolve) => setTimeout(resolve, 1000));
  contracts.AggregatorConfig = aggregatorConfig.target;

  // Deploy steps and AggregatorVerifier with dynamic linking
  let index = 1;
  let steps = [];

  while (true) {
    let AggregatorVerifierCoreStep;
    try {
      console.log("Begin deployment - AggregatorVerifierCoreStep", index);
      AggregatorVerifierCoreStep = await ethers.getContractFactory(
        "AggregatorVerifierCoreStep" + index.toString()
      );
      const step = await AggregatorVerifierCoreStep.deploy();
      console.log("Waiting for deployment - AggregatorVerifierCoreStep", index);
      await step.waitForDeployment();
      steps.push(step.target);
      console.log(
        "deployed AggregatorVerifierCoreStep",
        index,
        "at",
        step.target
      );

      await new Promise((resolve) => setTimeout(resolve, 1000));

      contracts["AggregatorVerifierCoreStep" + index.toString()] = step.target;

      index += 1;
    } catch (e) {
      console.log(`AggregatorVerifierCoreStep ${index} error: `, e);
      console.log("No more steps to deploy");
      break; // Exit loop if the contract factory fails (indicating no more steps)
    }
  }
  await new Promise((resolve) => setTimeout(resolve, 1000));
  // Deploy AggregatorVerifier with steps
  const AggregatorVerifier = await ethers.getContractFactory(
    "AggregatorVerifier"
  );
  const aggregatorVerifier = await AggregatorVerifier.deploy(steps);
  console.log("Waiting for deployment - AggregatorVerifier");
  await aggregatorVerifier.waitForDeployment();

  console.log("AggregatorVerifier deployed at", aggregatorVerifier.target);
  contracts.AggregatorVerifier = aggregatorVerifier.target;
  const filename = `deployedContracts_${network.name}.json`;
  const filePath = path.join(__dirname, filename);
  fs.writeFileSync(filePath, JSON.stringify(contracts, null, 2));
  console.log(`Deployed contract addresses have been saved to ${filename}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
