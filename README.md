# jrunner-docker

Dockerfile for the [`jaysong/jrunner:8-jre-alpine`](https://hub.docker.com/r/jaysong/jrunner/)
Docker Hub image which contains Alpine based JRE 8 for running Java applications.
`bash` is also installed because most Java applications tend have a starting script.

## Feature:

- Based on [`java:8-jre-alpine`](https://hub.docker.com/r/library/java/)
- `bash` is installed.
- Two mount points created at `/app` and `/data` with the working directory set to `/app`.

## How-To:
Assuming the [Gradle Java starter project](https://spring.io/guides/gs/gradle/) in the
working directory, one can build the executable by
```
docker run --rm -v $(pwd):/app jaysong/gradle:8-2.13 installDist
```
then run it by
```
docker run --rm -v $(pwd)/build/install/app:/app jaysong/jrunner:8-jre-alpine ./bin/app
```

To run web services that listens on certain ports, use
```
docker run -it --rm --expose 8080 -p 8080:8080 -v $(pwd)/tmp:/data -v $(pwd)/build/install/app:/app jaysong/jrunner:8-jre-alpine ./bin/app
```
