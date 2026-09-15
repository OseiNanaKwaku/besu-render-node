FROM hyperledger/besu:latest

COPY genesis.json /opt/besu/genesis.json

EXPOSE 10000

ENTRYPOINT ["besu", "--rpc-http-enabled", "--rpc-http-api=ETH,NET,WEB3", "--rpc-http-cors-origins=*", "--rpc-http-host=0.0.0.0", "--rpc-http-port=10000", "--host-allowlist=*", "--min-gas-price=0", "--miner-enabled", "--miner-coinbase=0xFE3B557E8Fb62b89F4916B721be55cEb828dBd73", "--genesis-file=/opt/besu/genesis.json", "--data-path=/tmp/besu-data"]
