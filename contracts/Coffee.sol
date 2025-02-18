// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Coffee{


struct memo{
  string name;
  string message;
  address from;
  uint256 timestamp;
}
memo[]public memos;
 address payable Owner  ;
 constructor(){
    Owner= payable (msg.sender);
 }

function buycoffee(string calldata name, string calldata message) external payable {
 require(msg.value>0,"Please pay atleast more than 0 ether");
 Owner.transfer(msg.value);
 memos.push(memo(name,message,msg.sender,block.timestamp));
}

function getmemos() view public returns(memo[] memory) {
    return memos;
}
}
