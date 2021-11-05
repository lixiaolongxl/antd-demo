// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;
contract Zhongcou {
    struct funder {
        address funderadderss;
        uint Tomoney;
    }
    
    struct needer {
        address neederaddress;
        uint goal;
        uint amount;
        uint fountCount;
        mapping(uint=>funder) map;
    }
    
    uint neederAccount;
    mapping(uint=>needer) needermap;
    function newNeeder(address _needer,uint _goal) public {
        neederAccount++;
        needer storage N = needermap[neederAccount];
        N.neederaddress = _needer;
        N.goal = _goal;
        N.amount = 0;
        N.fountCount = 0;
    }
    
    // gong'xian贡献 
    function contribute(address funderadderss,uint index,uint _amount) public{
        needer storage _needer = needermap[index];
        _needer.amount += _amount;
        _needer.fountCount++;
        _needer.map[_needer.fountCount] = funder(funderadderss,_amount);
    }
    //shi'fou'wan'c是否完成 
    function isComplete(uint index) public payable returns(bool){
        needer storage _needer = needermap[index];
        if(_needer.amount>_needer.goal){
            // amountzhuan'zhang转账 
            payable(_needer.neederaddress).transfer(_needer.amount);
            return true;
        }else{
            return false;
        }
    }
    // huo'qu'xiang'q获取详情
    function getInfo(uint index) public view returns(uint,uint,uint) {
        // 
        // assert(needermap[index]);
        
        return (needermap[index].goal,needermap[index].amount,needermap[index].fountCount);
        
        
    }
    fallback() external payable { }
}