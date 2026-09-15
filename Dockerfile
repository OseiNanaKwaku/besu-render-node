FROM hyperledger/besu:latest

COPY genesis.json /opt/besu/genesis.json

EXPOSE 10000

ENTRYPOINT ["besu", "--rpc-http-enabled", "--rpc-http-api=ETH,NET,WEB3,QBFT", "--rpc-http-cors-origins=*", "--rpc-http-host=0.0.0.0", "--rpc-http-port=10000", "--host-allowlist=*", "--min-gas-price=0", "--sync-mode=SNAP", "--genesis-file=/opt/besu/genesis.json", "--data-path=/tmp/besu-data"]
