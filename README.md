# docker-actix-server
Lightweight and configurable Actix server compiled on Alpine Docker image.

Server is configured by passing the following environment variables.: [default]
- BIND_TO= The IP address you wish the server to listen on. [0.0.0.0 (listens on all interfaces)]
- PORT= Port you wish to use for the webserver. [8080]
- HTTP_DIR= Root directory you wish to serve public files from. [./public]
- DOMAIN= Public domain name for your server (example.com) [localhost]
- MOUNT= Primary web path to serve INDEX file ["/"]
- INDEX= Default file (in HTTP_DIR) to served when someone visits your domain [index.html]
- DOMAIN_TWO= Optional secondary domain name, [www.DOMAIN] (set as "" to disable)
- MOUNT_TWO= Optional secondary web path for DOMAIN_TWO ["MOUNT"]
- INDEX_TWO= Optional index file to serve at DOMAIN_TWO/MOUNT_TWO [INDEX]

Container may take a while to deploy on smaller servers as the Actix server is compiled from source. 
The resulting docker image should contain a fast, functional, static webserver in a container less than 15MB.
 