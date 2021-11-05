// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract Vaulecopy {
    uint public a =100; 
    function tra() public view returns(uint) {
        // uint a = 20;
        // return a;
        return this.a();
    }
    function tra1() internal pure returns(uint) {
        return 100;
    }
    
    function tra3() external pure returns(uint) {
        return 200;
    }
    
    function tra4() private pure returns(uint) {
        return 300;
    }
    function aaa() public pure returns(uint) {
        return tra4();
    }
}
contract Sun is  Vaulecopy{
    function getint() public view returns(uint) {
        return tra();
    }
    function getint2() public pure returns(uint) {
        return tra1();
    }
    function getint3() public view returns(uint) {
        // Vaulecopy v = new Vaulecopy();
        return this.tra3();
    }
}