# commands

## create docker network

- docker network create mongo-network # creates a network to be used by the container for communication

## start mongodb

docker run -d \
-p 27017:27017 \
-e MONGO_INITDB_ROOT_USERNAME=admin \
-e MONGO_INITDB_ROOT_PASSWORD=admin \
--net mongo-network \
--name mongo \
mongo

## In the above command we did the below things

- -d flag starts the container in detached mode
- -p flag binds the 27017 port of the machine to 27017 port of the container
- -e flag is used to specify the env variables
- --net flag is used to tell the container to use the specified network
- --name flag is used to give name to the conatainer for identification purpose
- Here docker run does two thing first it pulls the latest mongo image from docker hub and then starts the image with specified config.
