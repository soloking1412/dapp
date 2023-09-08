// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.0;

contract Adoption{
    address[16] public adopters;

    function adopt(uint petId) public returns(uint){
        require(petId >= 0 && petId <=15);

        adopters[petId] = msg.sender;

        return petId;
    }

    function getAdoptors() public view returns(address[16] memory){
        return adopters;
    }
}