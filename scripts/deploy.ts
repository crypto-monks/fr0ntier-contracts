/* eslint-disable no-console */

import { ethers } from "hardhat";

async function main() {
  const TestNFT = await ethers.getContractFactory("TestNFT");
  const TestToken = await ethers.getContractFactory("TestToken");

  console.log("Starting deployments...");

  const testNFT = await TestNFT.deploy();
  await testNFT.deployed();
  console.log("TestNFT is deployed to:", testNFT.address);

  const testToken = await TestToken.deploy();
  await testToken.deployed();
  console.log("TestToken is deployed to:", testToken.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
