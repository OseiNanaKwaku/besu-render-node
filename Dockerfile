FROM hyperledger/besu:latest

# Expose Render's standard web interface port gateway
EXPOSE 10000

# Force Besu to listen on port 10000, unblock cloud hosts, accept free gas, and mine blocks instantly
ENTRYPOINT ["besu", "--rpc-http-enabled", "--rpc-http-cors-origins=*", "--rpc-http-host=0.0.0.0", "--rpc-http-port=10000", "--host-allowlist=*", "--min-gas-price=0", "--miner-enabled", "--miner-coinbase=0xFE3B557E8Fb62b89F4916B721be55cEb828dBd73", "--network=dev"]
