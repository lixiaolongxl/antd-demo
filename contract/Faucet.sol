// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
// 声明一个heyue 法币核心代码
contract Faucet {
    function witdraw( uint amount) public{
        // 错误判断
        require(amount <= 1000000000000000000);
        // 发币获取账户极嫩
        payable(msg.sender).transfer(amount);
    }

    // function () public payable {} 回退函数失败的时候调佣
}