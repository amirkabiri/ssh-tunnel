mkdir -p config

echo "Enter server config: (example: user-name@sever-ip)"
read server_config
echo $server_config > ./config/ip

echo "Enter password:"
read password
echo $password > ./config/pass

echo "Enter port: (default: 22)"
read port
echo "${port:-22}" > ./config/port

echo "8090" > ./config/local-port

./generate-ssh-key.sh && ./install-ssh-key.sh
