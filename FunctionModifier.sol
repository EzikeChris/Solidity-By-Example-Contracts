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

contract SetOwner {

    address public owner;


    constructor() {
        owner == msg.sender;

    }

    modifier OnlyOwner() {
        require(owner == msg.sender)
        _;
    }

    modifier validateAddresse(address _addr)  {
        require(_addr != address(0), "Address is Invalid");
        _;
    }


    function changeOwner(address _newOwner) public OnlyOwner validateAddresse {
        owner == _newOwner;
    }
    
}