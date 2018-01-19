#!/bin/bash
echo -e "\033[35m"
read -p "do you want to install mongodb?[Y/N]:" i
if [ "$i" == "y" ] || [ "$i" == "Y" ] 
then
	echo -e "\033[32m"
	echo installing mongodb...
	echo -e "\033[34m"
	sudo apt-get install mongodb
	echo -e "\033[32m"
	echo mongodb installed
fi
echo -e "\033[35m"
read -p "do you want to set data/db path for mongodb mongodb?[Y/N]:" i
if [ "$i" == "y" ] || [ "$i" == "Y" ] 
then
	echo -e "\033[34m"
	cd  /var/lib/mongodb
	sudo mkdir -p /data/db/
	sudo chown `id -u` /data/db
fi
echo -e "\033[35m"
read -p "do you want to install nodejs version 9?[Y/N]:" i
if [ "$i" == "y" ] || [ "$i" == "Y" ] 
then
	echo -e "\033[34m"
	curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
	sudo apt-get install -y nodejs
fi
echo -e "\033[35m"
read -p "do you want to install node-gyp?[Y/N]:" i
if [ "$i" == "y" ] || [ "$i" == "Y" ] 
then
	echo -e "\033[34m"
	sudo npm install -g node-gyp

fi
echo -e "\033[32m"
echo node version
node -v
echo npm version 
npm -v

