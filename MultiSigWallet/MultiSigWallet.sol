pragma solidity >=0.4.0 <0.9.0;

contract MultiSigWallet {
    event Deposit(address indexed sender, uint amount, uint balance)
    event SubmitTransaction(
        address indexed owner,
        uint indexed txIndex,
        uint value,
        address indexed to,
        bytes data,
    );
    event ConfirmTransaction(address indexed owner, uint indexed txIndex);
    event ExecuteTransaction(address indexed owner, uint indexed txIndex);
    event RevokeTransaction(address indexed owner, uint indexed txIndex);
    address [] public owners;
    uint public numConfirmationRequired;

    struct Transaction {
        address to;
        bool executed;
        uint numConfirmation;
        bytes data;
        uint value;
        mapping(address => bool) isConfirmed;
        uint numConfirmations;
    }











    function submitTransaction() {}
    function confirmTraction() {}
    function revokeTransaction() {}
    function executeTransaction(){}
    
}