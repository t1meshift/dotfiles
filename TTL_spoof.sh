#echo "Modifying iptables TTL rule..."
#sudo iptables -t mangle -A POSTROUTING -j TTL --ttl-set 65
sudo sysctl net.ipv4.ip_default_ttl=65
echo -e "\e[1m\e[32mReady. You can start USB tethering.\e[0m"
echo -e "\e[1;31mNotice that the rule lasts until reboot.\e[0m"
