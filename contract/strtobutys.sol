// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract ByteToString {
    bytes name = new bytes(2);
    bytes32 a1 = 0x276c;
    function init () public {
        name[0] = 0x7a;
        name[1] = 0x68;
    }  
    function bystring() public view returns(string){
        uint lent  = a1.length;
        
        
        
        bytes memory newbyte  = new bytes(lent);
        for(uint i=0;i<lent;i++){
            newbyte[i] = a1[i]; 
        }
        return string(newbyte);
    }
    
    function stringToBytes(string _str) public pure returns(bytes){
        return bytes(_str);
    }
}