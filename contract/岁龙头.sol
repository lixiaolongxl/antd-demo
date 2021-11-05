pragma solidity >=0.4.22;
contract Faucet{
    function withdraw(uint amount) public payable{
    	//amount 需要小于等于1
        require(amount<=1);
        // 向msg.sender发送amount数量的eth
        msg.sender.transfer(amount);
    }
    function() public payable{}
}