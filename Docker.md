# Installation
## Docker build image from Dockerfile
```
docker build -t sfsecr .
```
## Run image to create container
```
docker run -v path/local/sfs-ecr-test:/opt/sfs-ecr-test -p 8080:80 -itd --name sfsecrc sfsecr
```
_NOTE:_
- For Linux & Mac: `docker run -v $(pwd):/opt/sfs-ecr-test -p 8080:80 -itd --name sfsecrc sfsecr`
- For Windows:
    + Please open Docker settings and share disk driver of `path/local/sfsecr`
    + Run: `docker run -v ${PWD}:/opt/sfs-ecr-test -p 8080:80 -itd --name sfsecrc sfsecr`
## Access to container
```
docker exec -it sfsecrc /bin/bash
```

Access to `localhost:8080`