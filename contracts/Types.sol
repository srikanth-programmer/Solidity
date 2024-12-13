// SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

contract Types {
    /** 
        @notice About types in solidity
    */

    /** 
        @dev uint types can only accept postive number values
             Default uint type is uint256
        Number ranges for uint types : 2 ^ number - 1
        eg: uint8: 2^8 - 1 = 256 -1

    */
    
    uint public uInteger = 165;
    uint256 largeUint = type(uint256).max;

    /** 
        @dev The integer types can both accept negative values and postive number
             Default integer type is int256. Number ranges for integer types : 
              - 2 ^ (number - 1 )
            -2^(31-1) = -2,147,483,648 to 2,147,483,647 
        
        eg: int8 can accept values from -128 to +127 => -2^(8-1) = -128 to 2^(8-1) 127
    */
    int8 private iNumber = -73;
    int256 largeSignedInt = type(int256).max;

    /** 
        @dev Bytes types are only used to store fixed sized arrays of data. The size is specified using the array length keyword
            eg:bytes32[3] aBytesArray;
        Can't modified the length of the array after declaration
        one bytes = 8 bits 

     */
     
    bytes1 number = '1';
    bytes4 myByte = "1111";
    bytes8 myBytes = "11223344";
     
    /** 
        @dev enumeration is a user defined data type. It stores values with an integer . 
    */
    enum Status{
        OK,
        error
    }
    Status public status;
    Status public newStatus = Status.OK; 
    function getStatus() public view returns(uint8) {
        return uint8(status);
    }

}