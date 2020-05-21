sed -i -e 's/\r$//' multi_installer.sh
#!/bin/bash



function magentaMessage() {
echo -e "\\033[35;1m${@}\033[0m"
}

function greenMessage() {
	echo -e "\\033[32;1m${@}\033[0m"
}


function kekMessage() {
	echo -e "\\033[36;1m${@}\033[0m"
}

function yellowMessage() {
	echo -e "\\033[33;1m${@}\033[0m"
}

function whiteMessage() {
	echo -e "\033[0;37m${@}\033[0m"
}

function grayMessage() {
  echo -e "\033[0;30m${@}\033[0m"
}

clear
sleep 2.0
kekMessage "#######################################################"
whiteMessage "                       .xyz                          "
whiteMessage "        Webseite: https://www.leonhuber.de/          "
kekMessage "#######################################################"
whiteMessage "           OpenVPN Server Installer by .xyz          "
whiteMessage "        Version 0.1.2 - Beta - for Debian 9/10       "
kekMessage "#######################################################"
sleep 5.0

clear
clear
clear

greenMessage "Dein Server wird geupdated. Bitte Warten!"
sleep 2
apt-get update
magentaMessage "Der Server wurde erfolgreich geupdated!"
sleep 2
clear
greenMessage "Dein Server wird geupgradet. Bitte Warten!"
sleep 2
apt-get upgrade -y
magentaMessage "Der Server wurde erfolgreich geupgradet!"
sleep 2
clear

clear
echo ""
greenMessage "Welches Betriebssystem hast du?"
echo ""
echo "1) Debian 10"
echo "2) Debian 9"
echo ""
read -p "Bitte gib eine Zahl ein: " betriebssystem

if [ "$betriebssystem" = "1" ]; then
  clear
  magentaMessage "Die benötigten Packete werden geholt... Bitte warten!"
  sleep 2
  apt update && apt -y install ca-certificates wget net-tools gnupg
  wget -qO - https://as-repository.openvpn.net/as-repo-public.gpg | apt-key add -
  echo "deb http://as-repository.openvpn.net/as/debian buster main">/etc/apt/sources.list.d/openvpn-as-repo.list
  greenMessage "Der OpenVPN Server wird installiert... Bitte warten!"
  sleep 2
  apt update && apt -y install openvpn-as
  clear
  clear
  magentaMessage "Dein OpenVPN Server wurde erfolgreich installiert!"
  sleep 2
  clear
  greenMessage "Vielen Dank für das Nutzen meines Scriptes!"
  sleep 2.5
  exit
fi

if [ "$betriebssystem" = "2" ]; then
  clear
  magentaMessage "Die benötigten Packete werden geholt... Bitte warten!"
  sleep 2
  apt update && apt -y install ca-certificates wget net-tools gnupg
  wget -qO - https://as-repository.openvpn.net/as-repo-public.gpg | apt-key add -
  echo "deb http://as-repository.openvpn.net/as/debian stretch main">/etc/apt/sources.list.d/openvpn-as-repo.list
  greenMessage "Der OpenVPN Server wird installiert... Bitte warten!"
  sleep 2
  apt update && apt -y install openvpn-as
  clear
  clear
  magentaMessage "Dein OpenVPN Server wurde erfolgreich installiert!"
  sleep 2
  clear
  greenMessage "Vielen Dank für das Nutzen meines Scriptes!"
  sleep 2.5
  exit
fi