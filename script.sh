#!/bin/bash

# Update the system
echo "Updating the system..."
sudo apt update && sudo apt upgrade -y

# Install essential tools
echo "Installing essential tools..."
sudo apt install -y git curl wget unzip

# Install Metasploit Framework
echo "Installing Metasploit Framework..."
sudo apt install -y metasploit-framework

# Install Nmap
echo "Installing Nmap..."
sudo apt install -y nmap

# Install Wireshark
echo "Installing Wireshark..."
sudo apt install -y wireshark

# Install Aircrack-ng
echo "Installing Aircrack-ng..."
sudo apt install -y aircrack-ng

# Install Hydra
echo "Installing Hydra..."
sudo apt install -y hydra

# Install Python and Pip
echo "Installing Python and Pip..."
sudo apt install -y python3 python3-pip
pip3 install requests beautifulsoup4

# Install Tor Browser
echo "Installing Tor Browser..."
sudo apt install -y tor

# Install a Sniffer
echo "Installing tcpdump..."
sudo apt install -y tcpdump

# Install a Proxy
echo "Installing Squid..."
sudo apt install -y squid

# Install a VPN
echo "Installing OpenVPN..."
sudo apt install -y openvpn

# Install a Database
echo "Installing MySQL Server..."
sudo apt install -y mysql-server

# Install a Monitoring System
echo "Installing Nagios..."
sudo apt install -y nagios

# Install a Firewall
echo "Installing and configuring UFW..."
sudo apt install -y ufw
sudo ufw enable
sudo ufw allow ssh
sudo ufw allow 80
sudo ufw allow 443
sudo ufw status

# Install a Wireless Network Tool
echo "Installing Aircrack-ng..."
sudo apt install -y aircrack-ng

# Install Burp Suite
echo "Installing Burp Suite..."
wget https://portswigger.net/burp/releases/download?product=community&version=2023.10 -O burpsuite_community_linux_v2023.10.tar.gz
tar -xvzf burpsuite_community_linux_v2023.10.tar.gz
cd burpsuite_community_v2023.10
./burpsuite

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall
curl https://raw.githubusercontent.com/rapid7/metasploit-framework/master/msfupdate > msfinstall
chmod +x msfinstall
sudo ./msfinstall

# Install Visual Studio Code
# echo "Installing Visual Studio Code..."
# wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
# sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
# sudo apt update
# sudo apt install -y code
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository universe
wget -qO - https://apt.metasploit.com/metasploit-framework.gpg.key | sudo apt-key add -
echo "deb https://apt.metasploit.com/ $(lsb_release -c | awk '{print $2}') main" | sudo tee /etc/apt/sources.list.d/metasploit-framework.list
sudo apt update
sudo apt install -y metasploit-framework


echo "Setup complete! Your Debian-based system is now configured for penetration testing."
