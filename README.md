# jrunner-docker

Dockerfiles for the [`jaysong/jrunner`](https://hub.docker.com/r/jaysong/jrunner/) Docker
Hub images which contains a bare-metal Java application running environemnt.
`bash` is installed because most Java applications tend have a starting script.

## Feature:

- Based on [`java:8-jre-alpine`](https://hub.docker.com/r/library/java/)
- `bash` is installed.
- A mount point is created at `/app` with the working directory set to it.

## How-To:
Assuming the [Gradle Java starter project](https://spring.io/guides/gs/gradle/) in the
working directory, one can build the executable by
```
docker run --rm -v $(pwd):/app jaysong/gradle:8-2.13 installDist
```
then run it by
```
docker run --rm -v $(pwd)/build/install/app:/app jrunner ./bin/app
```
