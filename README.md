# Jumpstart your GAE development environment with Docker

This Docker image can help you set up a GAE (Python 3) development environment in less than a minute.

## Steps

1. Download and install [Docker Desktop](https://www.docker.com/products/docker-desktop)
2. Download (clone) this project.
3. Run `sudo chmod +x app/build.sh` to make the build.sh file executable.
4. Run `docker-compose up` (pass `-d` if you want to run it in the background).

And that's it! A sample Flask app is now running in this Docker environment and you can access it via your browser at [http://0.0.0.0:8080](http://0.0.0.0:8080). The Datastore emulator is accessible via [http://0.0.0.0:8081](http://0.0.0.0:8081).

## Two options

This project allows you to:

1. run your GAE app and Datastore Emulator in the **same** container (see the [master branch](https://github.com/ramuta/docker-gae-py3-datastore/tree/master), or
2. run your GAE app and Datastore Emulator in **separate** containers (see the ["datastore-separate-container" branch](https://github.com/ramuta/docker-gae-py3-datastore/tree/datastore-separate-container).

## Shutting down the Docker environment

You can shut down your Docker environment with a simple command:

	docker-compose down

You can also use [Kitematic](https://kitematic.com/) to start and shut down Docker containers visually (instead of using a command line).

## Changes to the Dockerfile

If you change the Dockerfile, you'll need to build it back with the `--build` flag: `docker-compose up --build`

## Updates

Also regularly update the docker image with this command: `docker pull google/cloud-sdk`.

## Pull requests

Pull requests to this project are very welcome!

## TODO

- Connecting GAE app with the Datastore Emulator