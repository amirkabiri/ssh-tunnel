if [ $(uname -s) = "Darwin" ] 
then
  network_ip=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2)
else
  network_ip=$(ifconfig eth0 | grep 'inet addr' | cut -d: -f2 | awk '{print $1}')
fi

local_port=${1:-$(cat ./config/local-port)}
echo "socks5://127.0.0.1:$local_port"
echo "socks5://$network_ip:$local_port"

if [ -f "./config/key" ]; then
  echo "Login using ssh key"
  ssh -C -p $(cat ./config/port) -i ./config/key -N -D 0.0.0.0:$local_port $(cat ./config/ip)
else
  echo "Login using password"
  ./sshpass.sh $(cat ./config/pass) ssh -C -p $(cat ./config/port) -N -D 0.0.0.0:$local_port $(cat ./config/ip)
fi
