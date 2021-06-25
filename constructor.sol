 pragma solidity >= 0.4.0 <0.9.0;

contract Migrations {
    //THE STATE VARIABLES WITHING A CONSTRUCTOR REMAIN PERSISTENT 
    unit256 public x;
    uint256 public y;
    string  ownerOnly;
    uint256 createdAt;


    constructor(uint256 _x, uint256 _y) public  {
        x = _x;
        y = _y;
        owner = msg.sender;
        createdAt = block.timestamp;

    }
}