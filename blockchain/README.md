## How to run Geth in docker

#### Launch with public blockchain
```
docker run -it -p 8545:8545 -p 30303:30303 \
         -v /${HOME}/.ethereum:/root/.ethereum \
         ethereum/client-go \
         -rpc --rpcaddr "0.0.0.0" console
```

### Launch new blockchain
The first command is used to seed your network with the genesis block and set the datadir.
In short, it's a private network init:
```
docker run -it -p 8545:8545 -p 30303:30303 \
         -v /${HOME}/.ethereum:/root/.ethereum \
         -v /${HOME}/.ethereum_private:/root/.ethereum_private \
         -v /${PWD}/genesis.json:/root/genesis.json \
         ethereum/client-go \
         --datadir=/root/.ethereum_private init /root/genesis.json
```



#####TODO:
- Private network
- Init by genesis.json
