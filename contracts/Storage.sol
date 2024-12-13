// SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

contract Functions {

    function getCallDataDetails() external pure returns (
        bytes memory fullCallData
       
    ) {
        // Get the full call data
        fullCallData = msg.data;
        
        // Extract function selector (first 4 bytes)
        // functionSelector = bytes4(msg.data[:4]);
        
        // // Decode the input parameter
        // // This requires using abi.decode to properly extract the string
        // decodedInput = abi.decode(msg.data[4:], (string));
        
        return fullCallData;
    }

    // Helper function to convert bytes to a readable string
    function bytesToString(bytes memory data) public pure returns (string memory) {
        return string(data);
    }
}