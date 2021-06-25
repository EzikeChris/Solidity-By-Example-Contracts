pragma solidity >=0.4.0 <0.9.0;

contract Loop {
    uint public count; 

    
    function loop(uint n) public {
        for(uint i = 0; i < n; i++) {
            count +=1;
        }
    }
}


contract PayShareHolder {
    address [100] public shareholder;




    function pay() public {
        for(let i = 0; i < shareholder.length; i++) {
            // run code to pay shareholder
        }
    }
    
}