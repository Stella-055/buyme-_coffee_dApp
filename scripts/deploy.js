const hre = require("hardhat");

async function main() {
  // Get the contract factory
  const Contract = await hre.ethers.getContractFactory("Coffee");

  // Deploy the contract
  const contract = await Contract.deploy(); 

  // Wait for the deployment to be completed
  await contract.waitForDeployment();

  console.log(`Contract deployed to: ${await contract.getAddress()}`);
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
