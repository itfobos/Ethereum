# Ethereum

To test a HelloWorldContract:

- `truffle develop`

In dev console you can call methods
- `HelloWorldContract.deployed().then(function(instance){return instance.counterValue.call();}).then(function(value){return value.toNumber()});`
- `HelloWorldContract.deployed().then(function(instance){return instance.counterValue.call();}).then(function(value){return value.toNumber()});
`
