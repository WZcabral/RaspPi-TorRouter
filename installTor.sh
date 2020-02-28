#!/bin/bash

#"*** Install the WiFi Hotspot **
git clone https://github.com/unixabg/RPI-Wireless-Hotspot.git
cd RPI-Wireless-Hotspot
sudo ./install

#** Install TOR **
sudo apt-get install tor

#** Configure TOR **
#** Add the following to the config file **
cat <<'EOT' >> /etc/tor/torrc
Log notice file /var/log/tor/notices.log
VirtualAddrNetwork 10.192.0.0/10
AutomapHostsSuffixes .onion,.exit
AutomapHostsOnResolve 1
TransPort 9040
TransListenAddress 192.168.42.1
DNSPort 53
DNSListenAddress 192.168.42.1
EOT

#** Dump iptable **
sudo iptables -F
sudo iptables -t nat -F

#** Route DNS **
sudo iptables -t nat -A PREROUTING -i wlan0 -p udp --dport 53 -j REDIRECT --to-ports 53

#** Route TCP **
sudo iptables -t nat -A PREROUTING -i wlan0 -p tcp --syn -j REDIRECT --to-ports 9040

#** Route SSH **
sudo iptables -t nat -A PREROUTING -i wlan0 -p tcp --dport 22 -j REDIRECT --to-ports 22

#** Check Routes **
sudo iptables -t nat -L

#** Save routes **
sudo sh -c "iptables-save > /etc/iptables.ipv4.nat"

#** Create Log File **
sudo touch /var/log/tor/notices.log
sudo chown debian-tor /var/log/tor/notices.log
sudo chmod 644 /var/log/tor/notices.log

#** Start TOR **
sudo service tor start

#** Check TOR **
sudo service tor status

#** Set TOR to start on boot **
sudo update-rc.d tor enable
