#!/bin/bash

### Repo name can be changed for other repositories
#repo=Flask-React-Angular-docker-compose

#username=JijendranP
#password: used ssh keys in git account

#url=https://$username@github.com/JijendranP/$repo.git

## clone the repo
#rm -rf $repo
#git clone $url

## Run docker-compose
#cd $repo

### just comment $docker_up or $docker_down in order to run and deprecate containers

docker_up=docker-compose pull && docker-compose up -d

docker_down= docker-compose down && docker rmi $(docker images -a -q)

### Comment/Uncomment to orchestrate container deployments

$docker_up

#$docker_down

