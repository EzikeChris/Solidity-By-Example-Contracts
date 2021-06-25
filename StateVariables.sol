pragma solidity >= 0.4.0 <0.9.0;

contract stateVariable {

    // state variables and are stored in storage inside a contract
    string public hello = "hello world"; ==> state variable(STORED IN STORAGE LOCATION ON THE SMART CONTRACT)
    // solidity created automatic getter for state variables
    // Variables in solidity can be stored in the following WAYS
    // storage (PERMANENTLY)= state variables
    // memory (while function call)
    // call data (some function arguments are store)
    //function HelloWord() {
        //string myHello = "helloworld";
   // this are not stored withing the blockchain 
    }
    // function call and
    // function transaction (change blockchain state )
    // variables are stored in three locations(storage memory and call data)
    // variables stored in smart contracts are called state Variables
    //transactional and none transactionally contracts(view or pure )
    // W e can use IPFS TO STORE SMART CONTRACT DATA

 contract SimpleStorage {
     string public text;
     // two ways to get state variables
     => declare your own function or
     => let soldity write one for you

 


// using storage means our input is a value stored withing our contract
// if the input value inside our contract is set from outside the contract
     function setText(string memory  _Text) public returns(string) {
         return text = _Text;
     }

     function getText() public returns view (string memory)  {
         return text;
     }
 }


 contract TextGetters {


     uint public text;


     function setText(string memory _Text) public  returns (string memory) {
         return text = _Text;
         
     }

     function getText(string memory) public view return (string) {
         return text;
     }
 }