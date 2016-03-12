#! /bin/bash

#first build the docker images
#
pushd SimpleWebServer
serverimageid=$(docker build -q -t "simplewebserver:latest" .)
popd
# we are going to build a base client image which installs curl.
# this is a lengthier operation, so building the image here means it will
# be quicker to run this script subsequent times with changes to the client and/or server
pushd ClientBase
docker build -q -t "reidlock-clientbase" .
popd
pushd TestClient
clientimageid=$(docker build -q -t "testclient:latest" .)
popd

#now set up the network the containers will join
# first check if the network already exists
netid=$(docker network ls -q -f name=reidlock-demo-network)
if [ -z $netid ]; then
# then create the network if needed
  netid=$(docker network create --internal reidlock-demo-network)
fi

#now start the web server container
servercontainerid=$(docker run -d --net=reidlock-demo-network --name=reidlock-demo-server simplewebserver)

#sleep just long enough to give the server time to come up
sleep 2

#now start the client container
res=$(docker run --net=reidlock-demo-network --name=reidlock-testclient testclient reidlock-demo-server 8080)

#clean things up
docker stop $servercontainerid
docker rm $servercontainerid
docker network rm $netid
docker rmi $serverimageid
clientcontainerid=$(docker ps -aqf name=reidlock-testclient)
docker rm $clientcontainerid
docker rmi $clientimageid

#output result
echo test $res
