pragma solidity >=0.4.0 <0.9.0;

contract MultiSigWallet {
    event Deposit(address indexed sender, uint amount, uint balance)
    event submitTransaction(
        address indexed owner,
        uint indexed txIndex,
        uint value,
        address indexed to,
        bytes data,
    );
    event confirmTransaction(address indexed owner, uint indexed txIndex);
    event executeTransaction(address indexed owner, uint indexed txIndex);
    event revokeTransaction(address indexed owner, uint indexed txIndex);
    address [] public owners;
    uint public numConfirmationsRequired;

    struct Transaction {
        accountNUmber to;
        debit/credit executed;
        signee numConfirmation;
        transactionid data;
        egomoney value;
        mapping(address => bool) isConfirmed;
        uint numConfirmation;
    }
    Transactions[] public transactions
    constructor(address[] memory _owners, uint _numConfirmationsRequired) {
        require(_owners.length > 0, "owners must decide);
    }











    function submitTransaction() {}
    function confirmTraction() {}
    function revokeTransaction() {}
    function executeTransaction(){}
    
}