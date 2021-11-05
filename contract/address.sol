// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Account {
    address account1 = 0xE3Ca443c9fd7AF40A2B5a95d43207E763e56005F;
    address account = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2; //uint160 可相互转化

    // uint160 520786028573371803640530888255888666801131675076;

    function getaccount() public view returns (uint160) {
        return uint160(account);
    }

    function getaddress() public pure returns (address) {
        return address(520786028573371803640530888255888666801131675076);
    }

    // 可以可以判断可以判断大小ke'yi'pan'duan'da'xiao
    function size() public view returns (bool) {
        if (account1 > account) {
            return true;
        } else {
            return false;
        }
    }

    constructor() public payable {}

    //获取账户金额
    function getbalance() public view returns (uint256) {
        return address(this).balance;
    }

    function getthis() public view returns (address) {
        return address(this);
    }

    function getcunsaddressbalance(address _add) public view returns (uint256) {
        return _add.balance;
    }

    // address(msg.sender)=>address (account)
    function transfer() public payable {
        account.transfer(msg.value);
    }

    // 给合约转账家回滚函数
    function transfer1() public payable {
        address(this).transfer(msg.value);
    }

    function() payable {}

    // 有返回值
    function send() public payable returns (bool) {
        return address(this).send(msg.value);
    }
    //  function () public payable {}

    //     blockhash(uint blockNumber) returns (bytes32)：指定区块的区块哈希——仅可用于最新的 256 个区块且不包括当前区块
    // block.chainid (uint): 当前链 id
    // block.coinbase ( address ): 挖出当前区块的矿工地址
    // block.difficulty ( uint ): 当前区块难度
    // block.gaslimit ( uint ): 当前区块 gas 限额
    // block.number ( uint ): 当前区块号
    // block.timestamp ( uint): 自 unix epoch 起始当前区块以秒计的时间戳
    // gasleft() returns (uint256) ：剩余的 gas
    // msg.data ( bytes ): 完整的 calldata
    // msg.sender ( address ): 消息发送者（当前调用）
    // msg.sig ( bytes4 ): calldata 的前 4 字节（也就是函数标识符）
    // msg.value ( uint ): 随消息发送的 wei 的数量
    // tx.gasprice (uint): 交易的 gas 价格
    // tx.origin (address payable): 交易发起者（完全的调用链）
}
