FROM hyperledger/besu:latest

# Force the container to expose Render's standard web interface port
EXPOSE 10000

# Tell Besu to listen directly on port 10000 so Render can route traffic to it
ENTRYPOINT ["besu", "--rpc-http-enabled", "--rpc-http-cors-origins=*", "--rpc-http-host=0.0.0.0", "--rpc-http-port=10000"]
