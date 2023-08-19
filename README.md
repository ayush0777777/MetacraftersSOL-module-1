# MetacraftersSOL-module-1

This is my submission for ETHPROOF INTERMEDIATE MODULE 1 

## Description

The contract has 3 functions namedly divide, withdraw and vote. 

Divide uses assert to assure that all the arguments are positive and not zero

Vote uses require to assure that person who is voting is above 18.

Withdraw uses revert to assure that the amount being withdrawed is less than the balance or else the transaction is reverted.  

## Getting Started

### Executing program


You can paste this code into Remix IDE and compile and deploy this contract.

```javascript
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
    
}```


## Authors

  
Ayush Kumar


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
