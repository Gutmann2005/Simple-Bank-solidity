// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    mapping(address=> uint) private balances;

    //Deposit ETH into the bank
    function deposit ()public payable {
        balances [msg.sender] = balances[msg.sender] + msg.value;

    }

    //withdraw ETH into the bank
    function withdraw(uint withdrawalAmount)public {
        require(balances[msg.sender] >=withdrawalAmount,"insufficient balance");
balances[msg.sender]= balances[msg.sender]-withdrawalAmount ;   
payable (msg.sender).transfer (withdrawalAmount);
    }
 // check balance (automatically public mapping)
}
