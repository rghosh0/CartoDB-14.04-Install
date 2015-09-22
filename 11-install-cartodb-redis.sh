#!/bin/bash

function pause(){
   echo ""
   read -p "|}==}-> $*"
}

pause "getting from git..."

git clone https://github.com/CartoDB/node-cartodb-redis.git
cd node-cartodb-redis
git checkout master

pause "install"
sudo make all
cd ..

echo "finished."
