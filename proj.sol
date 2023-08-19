// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {


    uint public votes = 0; 
    uint public balance = 10;  
    
    function divide(uint num1, uint num2) public pure returns(uint) {
        assert(num1!=0 && num2!=0);
        return(num1/num2);
    }

    function vote(uint age) public payable {
        require(age>=18,"You need to be at least 18 to vote");
        votes++;
    } 

    function withdraw(uint amt) public payable{
        if(amt <= 0 || balance - amt < 0){
            revert();
        }
        balance -= amt;
    }
    
}
