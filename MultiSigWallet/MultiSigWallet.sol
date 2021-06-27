pragma solidity >=0.4.0 <0.9.0;

contract MultiSigWallet {
    event Deposit(address indexed sender, uint amount, uint balance)
    // Event to notify users of a deposit on the wallet/contract
    event SubmitTransaction(
        address indexed owner,
        uint indexed txIndex,
        uint value,
        address indexed to,
        bytes data,
    );
    // event to notify users on a submitted transaction by one of the owners
    event ConfirmTransaction(address indexed owner, uint indexed txIndex);
    // confirmation of transaction by two or three of the signers
    event ExecuteTransaction(address indexed owner, uint indexed txIndex);
    // after confirmation transaction will be executed by signers
    event RevokeTransaction(address indexed owner, uint indexed txIndex);
    // RevokeTransaction by the transaction sender
    address [] public owners;
    // an array of owners of the multisig wallet
    uint public numConfirmationRequired;
    // number of confirmation required for a transaction to pass/ executed
    struct Transaction {
        address to;
        // address the transaction is sent to
        bool executed;
        // Check if the transaction is executed of not
        uint numConfirmation;
        bytes data;
        // if we are calling another contract we stored the transaction data which would be sent to the contract
        uint value;
        // amount of ethers sent to the address
        mapping(address => bool) isConfirmed;
        // when an owner or owners approve a transaction its store to bool(true/false) if it was isconfirmed or not 
        uint numConfirmations;
        ///Number of approvals stored in a transaction///
    }
    // Once the submit traction function has been called, you then create a transaction array or list to show the transaction list
    Transaction[] public transactions;
    // an array of transactions created

    constructor(address [] memory _owners, uint _numConfirmationRequired) public {
  require(_owners.length > 0, "Owner is Required");
  require(_numConfirmationRequired > 8);

    }




    function submitTransaction() {}
    function confirmTraction() {}
    function revokeTransaction() {}
    function executeTransaction(){}
    
}