#!/usr/bin/env bash

THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR

install_luarocks() {
  git clone https://github.com/keplerproject/luarocks.git
  cd luarocks
  git checkout tags/v2.2.1 # Current stable

  PREFIX="$THIS_DIR/.luarocks"

  ./configure --prefix=$PREFIX --sysconfdir=$PREFIX/luarocks --force-config

  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  make build && make install
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting.";exit $RET;
  fi

  cd ..
  rm -rf luarocks
}

install_rocks() {

  ./.luarocks/bin/luarocks-5.2 install luasec
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks-5.2 install luasocket
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi
  
  ./.luarocks/bin/luarocks-5.2 install redis-lua
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

}
chmod +x ./Bot/Telegram-cli/Telegram-Cli
if [ "$1" = "install" ]; then
  install_luarocks
  install_rocks
else
  while true; do
    ./Bot/Telegram-cli/Telegram-Cli -p F80Bot -s ./Bot/Bot.lua
    sleep 5s
  done
fi
