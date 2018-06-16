pragma solidity ^0.4.0;

contract HelloWorldContract {
    address public owner;

    uint counter;

    string message;

    function HelloWorldContract() public {
        owner = msg.sender;
        message = 'Hello world';
        counter = 0;
    }

    function incrementCounter() public {
        counter++;
    }

    function counterValue() public view returns (uint) {
        return counter;
    }

    function getMessage() public view returns (string) {
        return message;
    }
}
