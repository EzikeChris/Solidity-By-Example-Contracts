pragma solidity >=0.4.0 <0.9.0;

contract Events {


    // EVENTS ARE GENERAL PROVIDED WHEN A STATE CHANGE OCCURED
    // THEY ARE NORMALLY USED FOR UPDATING OUR UI OR NOTIFY ON CHANGES ON THE 
    // BLOCKCHAIN

    event log(address sender, string message)


    function fireEvents() public {
        emit log(msg.sender, "HelloWorld");
        emit log(msg.sender, "Welcome");
    }

WHEN USING indexed IT MEANS YOU ARE SEARCHING FOR AND ADDRESS WHICH HAS A SETING VALUE

    
}