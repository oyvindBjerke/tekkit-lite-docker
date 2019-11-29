# tekkit-lite-docker

Dockerfile to build a docker image which run a Tekkit Lite Minecraft server.

Jenkinsfile to build said docker image and push it to dockerhub (it's available [here](https://hub.docker.com/repository/docker/obje/tekkit-lite-docker)).

## Build

`docker build .`

## Run

`docker run --name tekkit-lite-server -v tekkit-lite:/data -d -p 25566:25565 obje/tekkit-lite-docker`
