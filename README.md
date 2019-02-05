# Dockerized development environment

- Download and install Docker from https://www.docker.com/get-started
- Run `sudo chmod +x app/build.sh`
- Run `docker-compose up` (pass `-d` if you want to run it in the background)
- if you change the Dockerfile, you need to build it back with the `--build` flag: `docker-compose up --build`
