// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract dynamicArry {
    
    uint[] grade = [1,2,3,4,6];
    
    function init() public  {
        grade[0]=10;
        grade[1]=20;
    }
    function getgreade() public view returns(uint[] memory){
        return grade;
    }
    function getlength() public view returns(uint) {
        return grade.length;
    }
    function push() public {
        grade.push(3);
    }
    // 合约自毁
   function kill() public {
        selfdestruct(payable(msg.sender));
    }
 }