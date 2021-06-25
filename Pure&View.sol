pragma solidity >=0.4.0 <0.9.0;


Function Behaviour ==>

View
don't modify the state 
// they don't modify the state of the blockchain
// Writing to state variables.
// Emitting events.
// Creating other contracts.
// Using selfdestruct.
// Sending Ether via calls.
// Calling any function not marked view or pure.
// Using low-level calls.
// Using inline assembly that contains certain opcodes.
Pure
dont mondify the state nor read the state
// Reading from state variables.
// Accessing address(this).balance or <address>.balance.
// Accessing any of the members of block, tx, msg (with the exception of msg.sig and msg.data).
// Calling any function not marked pure.
// Using inline assembly that contains certain opcodes.
Payable

/// Function that cant modify the state of the blockchain

uint public i = 1;

// this cannot update the state of the blockchain
function upDateI(uint z) public view returns (uint) {
    return i + z;
}

function update() Public view {
     i += 1;
}