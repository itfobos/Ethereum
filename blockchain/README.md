## How to run Geth in docker

#### Launch with public blockchain
```
docker run -it -p 8545:8545 -p 30303:30303 \
         -v /${HOME}/.ethereum:/root/.ethereum \
         ethereum/client-go \
         -rpc --rpcaddr "0.0.0.0" console
```

### Own blockchain

#### Init new blockchain
The first command is used to seed your network with the genesis block and set the datadir.
In short, it's a private network init:
```
docker run -it -p 8545:8545 -p 30303:30303 \
         -v ${HOME}/.ethereum_geth:/root \
         -v /${HOME}/.ethereum_private:/ethereum_private \
         -v /${PWD}/genesis.json:/root/genesis.json \
         ethereum/client-go \
         --datadir=/ethereum_private init /root/genesis.json
```

#### Launch Geth for the own blockchain
The second command uses the datadir and starts the network. 
It also attaches a console to the network via the RPC.
```         
docker run -it -p 8545:8545 -p 30303:30303 \
         -v ${HOME}/.ethereum_geth:/root \
         -v ${HOME}/.ethereum_private:/ethereum_private ethereum/client-go \
         --datadir=/ethereum_private \
         --networkid 9871 \
         --rpc --rpcaddr "0.0.0.0" \
         --rpcapi "admin,debug,eth,miner,net,personal,rpc,txpool,web3" \
         console
```

//TODO: Maybe use IPC (interprocess communication)
