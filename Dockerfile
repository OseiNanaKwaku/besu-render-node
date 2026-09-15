FROM hyperledger/besu:latest

# Expose Render's standard web interface port gateway
EXPOSE 10000

# Run a clean execution layer instance on port 10000 with loose validation walls
ENTRYPOINT ["besu", "--rpc-http-enabled", "--rpc-http-cors-origins=*", "--rpc-http-host=0.0.0.0", "--rpc-http-port=10000", "--host-allowlist=*", "--min-gas-price=0", "--data-path=/tmp/besu-data"]
