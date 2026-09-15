FROM hyperledger/besu:latest

# Expose Render's standard web interface port gateway
EXPOSE 10000

# Tell Besu to allow transactions from your Convex and Vercel cloud hosts
ENTRYPOINT ["besu", "--rpc-http-enabled", "--rpc-http-cors-origins=*", "--rpc-http-host=0.0.0.0", "--rpc-http-port=10000", "--host-allowlist=*"]

