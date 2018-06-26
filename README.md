# Ethereum

## Prerequisites
For development, it would be convenient to install:
- `nodejs` and `npm`. The project is tested with `nodejs` - v8.11.3, `npm` - v5.6.0 
- Truffle: [site](https://truffleframework.com/) / [github](https://github.com/trufflesuite/truffle)
- Ganache: [site](https://truffleframework.com/ganache/) / [github](https://github.com/trufflesuite/ganache).
 it's handy to use [AppImage](https://github.com/trufflesuite/ganache/releases/download/v1.1.0/ganache-1.1.0-x86_64.AppImage) file

## Dev

### HelloWorldContract test:
#### Deploy
- `truffle compile`
- `truffle develop` - the command will spawn a development blockchain locally, on port 9545.
    - `truffle(develop)> ` a console will appear.
- `migrate` in the console - our contracts will be deployed to the, just launched, test blockchain.
- `truffle develop --log` - can be launched in separate terminal, to watch transaction processing log.

#### Contract calls
In dev console you can call methods:
 - get counter value:
    - `HelloWorldContract.deployed().then(function(instance){return instance.counterValue.call();}).then(function(value){return value.toNumber()});`
 - increment counter 
    - `HelloWorldContract.deployed().then(function(instance){return instance.incrementCounter();});`
 - Get a message from the contract:
    - `HelloWorldContract.deployed().then(function(instance){return instance.getMessage();});` 

#### Ganache
To  check "what's going on", _Ganache_ can be used:
 - Launch Ganache at default port(7545)
 - `truffle migrate --reset` - The command will deploy the project contracts
 - `truffle console --network development` - to connect to the blockchain launched by Ganache
 - In Ganache UI you can browse through _transactions_, _blocks_, and _logs_
 - Also you can connect with  