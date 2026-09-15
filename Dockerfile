FROM hyperledger/besu:latest

# Copy your genesis file from your repository directly into the container path
COPY genesis.json /opt/besu/genesis.json

# Expose Render's standard web interface port gateway
EXPOSE 10000

# Force Besu to run a private network using your genesis rules on port 10000
ENTRYPOINT ["besu", "--rpc-http-enabled", "--rpc-http-cors-origins=*", "--rpc-http-host=0.0.0.0", "--rpc-http-port=10000", "--host-allowlist=*", "--min-gas-price=0", "--genesis-file=/opt/besu/genesis.json", "--data-path=/tmp/besu-data"]
