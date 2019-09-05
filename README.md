# Docker environment for Laravel

Plain dead simple LEMP stack Docker container for your Laravel (and other PHP!) development environment. 
Multiple Laravel application supported

### Stacks:
* **Webserver:** nginx:alpine, php:7.3-fpm
* **Database:** mysql:5.7, postgres:11
* **Misc:** redis:alpine

### Install:
1. install `docker` and `docker-compose`
1. configure docker runnable as non-root user
1. clone this repo
1. checkout your laravel project in `app/` folder as subdirectory
1. `docker-compose up -d`
1. access your dockerized app at: http://localhost:8000

### Directory structure:
(WIP)

### TODOs:
* server_name support in Nginx
* automatic /etc/hosts binding
* multiple PHP version
* use unix socket instead of tcp port for PHP-Fpm

#### Contributing notes:
* submit your pull request to 'dev' branch
