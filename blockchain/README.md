## How to run Geth in docker
 
```
//TODO: Maybe make volume for all '/root' dir in the container

docker run -it -p 8545:8545 -p 30303:30303 \
        -v /${HOME}/ethereum:/root/.ethereum \
         ethereum/client-go \
            --rpc --rpcaddr "0.0.0.0" console
```

### Launch new blockchain

#####TODO:
- Private network
- Init by genesis.json
