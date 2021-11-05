// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract funContr {
    string namestr;
    uint256 count;

    function fun() private {}

    function fun(string memory name) private returns (string memory) {
        namestr = name;
        return name;
    }

    function fun(uint256 index) private {
        count = index;
    }

    function diaoy() public {
        fun("li xiao long");
    }

    function diaoy2() public {
        fun(100);
    }

    function getcount() public view returns (uint256) {
        return count;
    }

    function getstr() public view returns (string memory) {
        return namestr;
    }
    // 函数返回值 
    function returntest()
        public
        pure
        returns (string memory name, uint256 index)
    {
        name = "ssss";
        index = 1;
    }
}
