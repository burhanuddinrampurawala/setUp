#!/bin/bash
echo -e "\033[35m"
read -p "do you want to install mongodb?[Y/N]:" i
if [ "$i" == "y" ] || [ "$i" == "Y" ] 
then
	echo installing mongodb...
	sudo apt-get install mongodb
	echo mongodb installed
fi
read -p "do you want to set data/db path for mongodb mongodb?[Y/N]:" i
if [ "$i" == "y" ] || [ "$i" == "Y" ] 
then
	cd  /var/lib/mongodb
	sudo mkdir -p /data/db/
	sudo chown `id -u` /data/db
fi
read -p "do you want to install nodejs version 8?[Y/N]:" i
if [ "$i" == "y" ] || [ "$i" == "Y" ] 
then
	curl -sL https://deb.nodesource.com/setup_$v | sudo -E bash -
	sudo apt-get install -y nodejs
fi
read -p "do you want to install node-gyp?[Y/N]:" i
if [ "$i" == "y" ] || [ "$i" == "Y" ] 
then
	npm install -g node-gyp

fi

echo node version
node -v
echo npm version 
npm -v