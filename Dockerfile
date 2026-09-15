FROM ethereum/client-go:stable

# Expose Render's standard web interface port gateway
EXPOSE 10000

# Launch Geth in instant developer mining mode on port 10000, unblock cloud hosts, and allow free gas
ENTRYPOINT ["geth", "--dev", "--http", "--http.addr=0.0.0.0", "--http.port=10000", "--http.corsdomain=*", "--http.vhosts=*", "--http.api=eth,net,web3,personal", "--allow-insecure-unlock"]
