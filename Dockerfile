FROM hyperledger/besu:latest

# Expose Render's standard web interface port gateway
EXPOSE 10000

# Force standard developer mining using the parameters from the official documentation
ENTRYPOINT ["besu", "--network=dev", "--miner-enabled", "--miner-coinbase=0xFE3B557E8Fb62b89F4916B721be55cEb828dBd73", "--rpc-http-cors-origins=*", "--host-allowlist=*", "--rpc-http-enabled", "--rpc-http-host=0.0.0.0", "--rpc-http-port=10000", "--min-gas-price=0", "--data-path=/tmp/besu-data"]
