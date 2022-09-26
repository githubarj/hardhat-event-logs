const hre = require("hardhat");

async function main() {
  await hre.run("compile");

  // deployment
  const SimpleStorage = await hre.ethers.getContractFactory("SimpleStorage");
  const simpleStorage = await SimpleStorage.deploy;
//   await simpleStorage.deployed();


}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
