// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract Overload {
    function saySomething() public pure returns(string memory){
        return("Nothing");
    }

    function saySomething(string memory something) public pure returns(string memory){
        return(something);
    }

    function f(uint8 _in) public pure returns (uint8 out) {
        out = _in;
    }

    function f(uint256 _in) public pure returns (uint256 out) {
        out = _in;
    }
}

contract Main is Overload {
    function run() public pure {
        saySomething("Hello");
        
        // uint8 a=f(10); // Error: 0x94d7a251 <- The function signature does not match the argument type. Type mismatch (types are bytes and uint).
    }
}