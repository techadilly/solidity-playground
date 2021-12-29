pragma solidity ^0.8.0;

contract DataTypes {
    bool myBool = false;

    int8 myInt = -128;
    uint8 myUInt = 255;

    string myString;
    uint8[] myStringArr;

    bytes1 myValue;
    bytes1 myBytes1;
    bytes32 myBytes32;

    //    fixed256x8 myFixed = 1; // 255.0
    //    ufixed myFixed = 1;

    enum Action {
        ADD,
        REMOVE,
        UPDATE
    }

    Action myAction = Action.ADD;

    address myAddress;

    function assignAddress() public {
        myAddress = msg.sender;
        myAddress.balance;
        myAddress.transfer(10);
    }

    uint256[] myIntArr = [1, 2, 3];

    function arrFunc() public {
        myIntArr.push(1);
        myIntArr.length;
        myIntArr[0];
    }

    uint256[10] myFixedArr;

    struct Account {
        uint256 balance;
        uint256 dailyLimit;
    }

    Account myAccount;

    function structFunc() public {
        myAccount.balance = 100;
    }

    mapping(address => Account) _accounts;

    function() public payable {
        _accounts[msg.sender].balance += msg.value;
    }

    function getBalance() public view returns (uint256) {
        return _accounts[msg.sender].balance;
    }
}