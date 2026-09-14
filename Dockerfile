FROM hyperledger/besu:latest
EXPOSE 8545
ENTRYPOINT ["besu", "--rpc-http-enabled", "--rpc-http-cors-origins=*", "--rpc-http-host=0.0.0.0"]
