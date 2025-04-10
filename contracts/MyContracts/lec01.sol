// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContracts {
    string message = "Hello World";
    uint a=1;
    uint b=2;
    bool isPresent= false;
    string hello="Hello";
    string world="World";
   
    function add() public view returns (uint){
        return a+b;
    }
    function inc() public  returns (uint){
        return ++a;
    }
    function dec() public returns (uint){
        return --a;     
    }
    function attendence() public returns(bool){
        if(isPresent==true){
        isPresent=false;
        }else{
            isPresent=true;
        }
            return isPresent;
        }
        
    string ans;
function numCheck() public returns (string memory){
    if(a%2==0){
        ans="Even";
    }else{
        ans="Odd";
    }
    return ans;
    }

function stringConcatinate(string memory x, string memory y) public pure returns (string memory){
    return string(abi.encodePacked(x, y));
}

function requireUsingEvenOdd(uint num) public pure returns(uint){
    require(num%2==0,"odd Number");
    return ++num;
}
    function printSender() public {
        emit SenderLogged(msg.sender);  
    }
    event SenderLogged(address sender);
}