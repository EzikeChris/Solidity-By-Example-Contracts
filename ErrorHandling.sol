pragma solidity >=0.4.0 <0.9.0;

contract Error {
    // Assert
    // Should never fails
    // uses all the gas
    // WHEN AN ASSERTIO FAILS IT USES OF THE GAS AND STATE CHANGES WILL BE REVERTED BACK
    uint256 amount;
    uint256 public balance;
    uint256 oldbalance = balance;
    
    function deposit(uint256 _amount) public {
        balance += _amount;
        assert(balance >= oldbalance);

    function withdraw(uint256 _amount) public{
        balance -= _amount;
        assert(balance <= oldbalance);
    }
    }
    Require
    // validate inputs, pre-conditions and output
    // does not use all the gas
    revert
    // to check complex conditions make sure you use revert
}