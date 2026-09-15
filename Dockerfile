FROM hyperledger/besu:latest

# Expose Render's standard web interface port gateway
EXPOSE 10000

# Force Besu to load its built-in development genesis block profile explicitly
ENTRYPOINT ["besu", "--rpc-http-enabled", "--rpc-http-cors-origins=*", "--rpc-http-host=0.0.0.0", "--rpc-http-port=10000", "--host-allowlist=*", "--min-gas-price=0", "--genesis-file=dev", "--data-path=/tmp/besu-data"]
