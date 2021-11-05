// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract towArry {
    uint [2][3] arr = [[1,2],[2,3],[2,4]];
    
    function getLengt() public view returns(uint) {
       return arr.length;
    }
    function getchildlength()  public view returns(uint) {
        return arr[1].length;
    }
    function  getcontent() public view returns(uint[2][3] memory){
        return arr;
    }
    function changedata() public {
        arr[1][1] = 100;
    }
    function sum() public view returns(uint256) {
        uint256 sum1  = 0;
        for(uint i=0;i<arr.length;i++){
            for(uint j=0;j<arr[i].length;j++){
                sum1+=arr[i][j];
            }
        }
        return sum1;
    }
}