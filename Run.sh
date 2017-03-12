#!/usr/bin/env bash

cd $HOME/F80

installP() {
	    mkdir TG
	    cd TG
		sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
		sudo apt-get install g++-4.7 -y c++-4.7 -y
		sudo apt-get update
		sudo apt-get upgrade
		sudo apt-get install libreadline-dev -y libconfig-dev -y libssl-dev -y lua5.2 -y liblua5.2-dev -y lua-socket -y lua-sec -y lua-expat -y libevent-dev -y make unzip git redis-server autoconf g++ -y libjansson-dev -y libpython-dev -y expat libexpat1-dev -y
		sudo apt-get install screen -y
		sudo apt-get install tmux -y
		sudo apt-get install libstdc++6 -y
		sudo apt-get install lua-lgi -y
		sudo apt-get install libnotify-dev -y
		sudo service redis-server restart
		wget https://valtman.name/files/telegram-cli-1222
		mv telegram-cli-1222 TeleCli
		chmod +x TeleCli
		cd ..
}


install() {
	mkdir TG
	cd TG
	wget https://valtman.name/files/telegram-cli-1222
	mv telegram-cli-1222 TeleCli
	chmod +x TeleCli
	cd ..
}


if [ "$1" = "install" ]; then
  install
   installP
  else

if [ ! -f ./TG/TeleCli ]; then
    echo "tg not found"
    echo "Run $0 install"
    exit 1
 fi
if [ "$1" = "background" ]; then
  echo "Running :)"
  
   screen -d -m ./TG/TeleCli -p BotF80 -s Run/Bot.lua
   
  echo "Runned :)"
  echo "@SPRCPU_Company"
  
  echo "Use CTRL + Z To Exit"
 else
  ./TG/TeleCli -p BotF80 -s Run/Bot.lua
  fi 
fi
