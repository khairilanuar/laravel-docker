# Docker environment for Laravel

Plain dead simple LEMP stack Docker container for your Laravel (and other PHP!) development environment. 
Multiple application supported

### Stacks:
* **Webserver:** nginx:alpine, php:7.3-fpm
* **Database:** mysql:5.7, postgres:11
* **Misc:** redis:alpine

### Install:
1. install `docker` and `docker-compose`
1. configure docker runnable as non-root user: https://docs.docker.com/install/linux/linux-postinstall/
1. clone this repo

### Quick app configuration
1. checkout your laravel project in `app/` folder as subdirectory
1. create Nginx server-block in `./nginx/conf.d/` (or, copy template `from stubs/nginx/server-block.conf`)
1. `docker-compose up -d`
1. access your dockerized app at: http://localhost:8000
1. (optional) enable local domain name support

### Enabling local DNS name in dnsmasq
1. disable system-resolv
1. create dnsmasq for docker: `/etc/dnsmasq.d/docker` 
    ```
    address=/.docker/178.18.18.80
    ```
   replace `.docker` with your intended local domain prefix as required
1. amend your app Nginx server block to include `server_name your-app-name.docker`

### Directory structure:
(WIP)

### TODOs:
* ~~server_name support in Nginx~~
* SSL (let's encrypt) support
* automatic /etc/hosts or dnsmasq binding from folder name in ./app/ (a la Valet)
* ~~multiple PHP version~~
* use unix socket instead of tcp port for PHP-fpm

#### Contributing notes:
* submit your pull request to 'dev' branch
