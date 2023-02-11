//SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

import "./Engine.sol";

contract Game is Engine{
    uint randNonce = 0;
        function game(uint userInput)public returns(bool){
            uint[2] memory rns;
            while (randNonce<2){
            rns[randNonce]=uint(keccak256(abi.encodePacked(block.timestamp,msg.sender,randNonce))) % userInput;
            randNonce++;
            }
            uint engineresult=engine(rns[0],rns[1]);
            if (engineresult==userInput){
                return true;
            }
            else return false;
        }
}