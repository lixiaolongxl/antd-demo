// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract globMapping {
    mapping(address=>uint) count;
    mapping(uint=>string) nameMapping;
    uint index = 0;
    
    function reginster(string  memory _name) public {
        index++;
        count[msg.sender] = index;
        nameMapping[index] = _name;
    }
    
    function getmappingname(uint id) public view returns(string memory){
        return nameMapping[id];
    }
    
    function getindex(address id) public view returns(uint){
        return count[id];
    }
}

