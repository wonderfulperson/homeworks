//SPDX-License-Identifier: MIT


pragma solidity ^0.8.6;

contract Mask{

    function bitShift(uint x) public pure returns (uint){
        x=x<<1;
        return x;
    }
    
    function Masking(uint8 input) public pure returns (uint[8] memory){
        uint[8] memory result;
        uint mask=1;
        for (uint count = 0; count <8; count++){
            result[count] = input & mask;
            mask=mask<<1;
        }
        return result;
    }

}