// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract Dynamictowarr {
    uint[][] arr = [[1,2],[2,3],[3,4]];
    function getcontent() public view returns(uint[][] memory){
        return arr;
    }
    
    function push() public {
        arr.push([5,6]);
    }
    function update() public {
        arr[1][1] =100;
    }
    
    function getlen() public view returns(uint) {
        return arr.length;
    }
    function getchildlen() public view returns(uint) {
        return arr[0].length;
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
    function f(uint len) public pure returns(uint[] memory,bytes memory){
        uint[] memory a = new uint[](7);
        bytes memory b = new bytes(len);
        
        assert(a.length == 7);
        assert(b.length == len);
        a[6] = 8;
        return (a ,b);
    }
    // function changeleng() public  {
    //     arr.length = 10;
    // }
}