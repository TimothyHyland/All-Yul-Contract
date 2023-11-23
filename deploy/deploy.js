const hre = require("hardhat");

async function main() {
	var abi = require("../build/allyul.abi.json");
	var bytecode = require("../build/allyul.bytecode.json");

	const allyulContract = await hre.ethers.getContractFactory(abi, bytecode);

	const allyulInstance = await allyulContract.deploy();
	await allyulInstance.waitForDeployment();

	console.log(`All Yul Contract was deployed to ${allyulInstance.target}`);
}

main();