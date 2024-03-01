cp continuation-batcher/sol/contracts contracts -r

npx hardhat compile

npx hardhat run scripts/deploy.js --network $1