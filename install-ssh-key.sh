./sshpass.sh $(cat ./config/pass) ssh-copy-id -p $(cat ./config/port) -i ./config/key $(cat ./config/ip)
