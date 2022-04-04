#!/bin/bash

daemon_file=/etc/docker/daemon.json

read -p "Ingrese la IP o nombre del servidor del docker registry>> "  server

read -p "Ingrese el puerto TCP del servidor del docker registry>> " port

echo "Insecure registry is $server:$port"

if [ ! -f "$daemon_file" ]
then
	echo "Creating file $daemon_file"
	touch $daemon_file
else
	echo "$daemon_file already exist...skipping"
fi 

if [  -n "$server"  -a  -n "$port"  ]
then
	echo "{ \"insecure-registries\" : [\"${server}:${port}\"] }" >> $daemon_file
        systemctl restart docker.service
else
	echo "Es necesario ingresar  servidor y puerto para esta operacion"
fi
