const Web3 = require('web3');
//Initialisation of web3 instance
//Import Web3, which is a bridge between other programming languages
//it also enables us to get data from the blockchain eg Javascript and nodejs
const abi = require('./abi.json');
//import the abi of Dai Stablecoin//
//application programming interface which enables other programs
//e.i javascript react application to interact with our smart contracts
// the Dai stable abi enables us to get all of the events fired or called on the smart contract or the dai stable coin
// In other to use web3 we need an ethereum full node

const INFURA_URL = require('');
// Initialisation of the ethereum mainet hosted on web three

const web3 = new Web3('INFURA_URL');
// Connecting your infura mainnet node to web3

const addresses = "0x5FbDB2315678afecb367f032d93F642f64180aa3"
// address of your contract

async function main() {
    const latest = await web3.eth.getBlockNumber();
    // get the latest block numbers asynchronously (which means do things at the same time)
     console.log("latest block:", latest);
 const contract = new web3.eth.Contract(abi, address);
 // get the latest block asynchronously from this address

 const logs = await contract.getPastEvents("Transfer", { 

    fromBlock: latest - 100,
    toBlock: latest
 });

 console.log('logs', logs, '$(logs.length) logs');









}
