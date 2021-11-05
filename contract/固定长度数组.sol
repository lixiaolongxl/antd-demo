// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract fixArry {
    uint [5]  public arr = [1,2,33,4,5];
    
    function init () public {
        arr[0] =100;
        arr[1] = 200;
       
    }
    
        function getarr() public view returns(uint [5] memory){
            return arr;
        }
        // bu'neng不能xiu'gai不能修改length  bunengbu'engbuneng不能pu'sh
    function getlength() public view returns(uint) {
        return arr.length;
    }
    // shu'zu数组数组字面量字面量字面量字面量zui'x字面量字面量最新pi'pei字面量字面量最新匹配字面量字面量最新匹配原则
    function getarr1() pure public returns (uint8[3] memory){
        return [2,2,4];
    }
    function getarr2() pure public returns (uint16[3] memory){
        return [256,2,4];
    }
    
}