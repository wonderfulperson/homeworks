//SPDX-License-Identifier: MIT

pragma solidity ^0.4.9;

contract StringConversion {

    function binaryToDecimal(string memory binary) public pure returns(uint) {
        uint result=0;
        bytes memory b=bytes(binary);
        for(uint count=0;count<b.length;count++){
            if (b[count]=="1"){
                result= result+2**(b.length-count-1);
            }
            else if (b[count]=="0"){
                result= result;
            }
            else result=0;
        }
        return result;
    }

}