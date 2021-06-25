pragma solidity >=0.4.0 <0.9.0;
// Inheritance is when you make use of one contract to inherit the functionality of another contract //
// Parent Contract 
contract A {

}


// this contract inherits from contract A using is keyword
contract B is A {

}

// Multiple inheritance in solidity


// WHERE CONTRACT C INHERITS FROM CONTRACT A - B Multiple inheritance
contract C is A, B {
    // BASICALLY CONTRACT C WOULD HAVE THE FUNCTIONS OF A B IN IT

}

