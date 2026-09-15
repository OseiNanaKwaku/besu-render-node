FROM hyperledger/besu:latest

# Copy your genesis configuration file from your repo directly into the container working path
COPY genesis.json /opt/besu/genesis.json

# Expose Render's standard web interface port gateway
EXPOSE 10000

# Force Besu to load your custom free-gas genesis settings on startup
ENTRYPOINT ["besu", "--rpc-http-enabled", "--rpc-http-cors-origins=*", "--rpc-http-host=0.0.0.0", "--rpc-http-port=10000", "--host-allowlist=*", "--min-gas-price=0", "--genesis-file=/opt/besu/genesis.json", "--data-path=/tmp/besu-data"]
