#!/bin/bash

echo "deb https://repo.mongodb.org/apt/debian buster/mongodb-org/4.2 main" | sudo tee -a /etc/apt/sources.list.d/mongodb-4.2.list
sudo apt update
sudo apt install mongodb-org

mongo  --eval \
 'db.createUser( { user: "mongoadmin", pwd: "Il1k3Traf!k", roles: [ { role: "userAdminAnyDatabase", db: "admin" } ] })' admin

mongo -u mongoadmin -p 'Il1k3Traf!k' --eval \
  'db.createUser( { user: "appity", pwd: "apppwd", roles:[ { role: "readWrite" , db:"appdb" } ] })' \
  admin
