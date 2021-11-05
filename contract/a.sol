pragma solidity >0.4.22;

contract Ballot {
    struct Voter {
        uint256 weight;
        bool voted;
        uint8 vote;
        address delegate;
    }
    field 128x20 a;  //M 0-256 8的倍数  N 0-80
    struct Proposal {
        uint256 voteCount;
    }
    address public chairperson;
    Proposal[] proposals;
    mapping(address=>Voter) voters;
    
    constructor(uint256 numbers){
        chairperson = msg.sender;
        voters[chairperson].weight = 1;
        proposals.length = numbers
        
    }
    function giveRightsTovote(address voter) public{
        require(msg.sender== chairperson);
        // require(!sender.voted);
        require(!voters[voter].voted);
        require(voters[voter].weight==0)
        voters[voter].weight=1;
    }
    function delegate(address to) public{
        // address(0)//0地址
        while(voters[to].delegate!=address(0)&& voters[to].delegate != msg.sender){
            to = voters[to].delegate;
        }
        require(to!=msg.sender)
        // sender.v
    }
}
