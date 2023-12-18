# docker-actix-server
Lightweight and configurable Actix server compiled on Alpine Docker image.

The default configuration expects ./config/config.toml and ./static/ in the same directory as the compose file, however, this can be changed in the docker-compose.yml file. 

The resulting docker image should contain a functional static webserver and be less than 16MB.

/config/config.toml can be used to set basic server settings. 