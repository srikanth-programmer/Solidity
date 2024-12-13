// SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

contract Hellworld {

    string public message = "Hello World";
    constructor(){

    }

    function getMessage() external view returns (string memory){ return message; }
}

