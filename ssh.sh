if [ -f "./config/key" ]; then
  echo "Login using ssh key"
  ssh -i ./config/key -p $(cat ./config/port) $(cat ./config/ip)
else
  echo "Login using password"
  ./sshpass.sh $(cat ./config/pass) ssh -p $(cat ./config/port) $(cat ./config/ip)
fi
