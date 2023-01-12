# Introduction
SSH is a secure and encrypted tunnel that mainly get used for connecting to remote servers and running commands on it. But you can use it as a VPN to bypass internet censorship and remain anonymous.
The good thing about SSH is you almost don't need any extra application on your client and it's so easy to config it on server.

# First you need a SSH account
## First method: You need to have a linux server
You need to get a server. By default, OpenSSH already installed on the servers and you don't need to install anything on server.
But it's better to change port of it.
OpenSSH is running on port 22, by default. But this port may not working well, for example in current situation of Iran, the goverment has applied some packet dropping on this port.
### How to change SSH port on server?
just edit this file `/etc/ssh/sshd_config` using vim (or other file editors) and add this code to first of it:
`Port 2222`
This will change it's port to `2222`.

**Advanced tip:** You can increase speed of vpn up to 3 times, just by [enabling BBR](https://unixcop.com/how-to-enable-bbr-on-debian-11-ubuntu/) on your server.

## Second method: Free SSH account 
[sshocean.com](https://sshocean.com/) is one of websites that provides free SSH account.
You can find another providers just by searching in google.

(Feel free to send a Pull Request if you find a better provider)

# Setting up your client
## Android
Download [SagerNet](https://play.google.com/store/apps/details?id=io.nekohasekai.sagernet) from googleplay.

You can add your account by clicking on `Add Icon` on top right of app,then Manual settings > SSH 

Note: SagerNet may not get connected for you in Iran, You need to change `Remote DNS` from settings to `https://8.8.8.8/dns-query`

## Mac + Linux
Clone this repo
`https://github.com/amirkabiri/ssh-tunnel.git`

Grant execution permission to all .sh files
`chmod +x $(ll | grep .sh$ | awk '{print $9}')`

Then, run `./setup.sh` and enter configuration.


# Scripts description
## setup.sh
This will help you to configure your account.
## socks5.sh [local-port]
This script will lunch a local socks5 server,
default port is 8090, but you can specify another port by passing argument: `./socks5.sh 8080`
## vpn.sh
This script will tunnel your network completely, but you need to install `sshuttle` package first.

MacOS: `brew install sshuttle`

# Contribution
Feel free to contribute on this project.