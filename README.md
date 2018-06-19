# Ethereum

To test a HelloWorldContract:

- `truffle develop`

In dev console you can call methods
- `HelloWorldContract.deployed().then(function(instance){return instance.counterValue.call();}).then(function(value){return value.toNumber()});`
- `HelloWorldContract.deployed().then(function(instance){return instance.counterValue.call();}).then(function(value){return value.toNumber()});`

To  check "what's going on", _Ganache_ can be used:
 - Launch Ganache at default port(7545)
 - `truffle migrate` (The command will deploy the project contracts)