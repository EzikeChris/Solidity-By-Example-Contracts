pragma solidity >=0.4.0 <0.9.0;


contract gasPrice {


// GAS IS PRIMARILY USED TO LIMIT THE AMOUNT OF COMPUTATION THAT our contracts make use of
// TRANSACTION CAN DO. EXAMPLE CARS OR A CONTRACT THAT WOULD NEVER STOP
// Gas limit the maximum gas you are willing to use for a transaction
// Gas Price how much ether you willing to pay for 1 gas
// to get the ethers to pay for the transaction you multiply gas limit by gasprice

function checkGasPrice() public returns (uint){
    return tx.gasprice;
}


// Function uses a while loop that adds 1 to i forever
// gas will finish
uint public i = 0;
 function forever() {
     while(true) {
         i += 1;
     }
 }
}

// TYPES OF GAS LIMIT
// GAS LIMIT => SET BY THE TRANSACTION CALL
// BLOCK LIMIT => SET BY THE NETWORK

// IF YOUR TRANSACTION RUNS OUT OF GAS CHANGES TO THE
// STATE ARE REVERTED BUT YOU WILL STILL PAY FOR THE GAS
