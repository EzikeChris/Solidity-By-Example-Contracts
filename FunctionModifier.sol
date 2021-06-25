pragma solidity >= 0.4.0 <0.9.0;



// contract functionModifier{
// // reentrance attack basically is a function calling a function while function
// //  a is still being called......
// What does Function Modifiers do {
//     reusable code
//     run before and after the function
// }
// Example
// restrict write access
// input validation
// reentrance guard
// }


contract funcModifier {


    address public owner

    constructor () {
        owner == msg.sender;
        // addresse that deploys contract is owner/create the contract transaction 

        
    }
    
    modifier onlyOwner() {
        require(owner == msg.sender);
        _;
    }

    modifier validateAddress(uint _addr)  {
        require(_addr != addresse(0), "not valid addresse");
        _;
    }

    function changeOwner(address _newowner) public onlyOwner validateAddress {
        owner = _newowner;
    }
}