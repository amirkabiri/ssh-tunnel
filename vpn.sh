# --no-latency-control
sshuttle --dns -v --remote $(cat ./config/ip):$(cat ./config/port) 0/0 --ssh-cmd 'ssh -i ./config/key'
