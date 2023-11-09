#! /bin/bash


# PHP version 7.2 with Apache
podman run -d -p 8080:80 -v ./html:/var/www/html php:7.2-apache


# PHP latest version with Apache
podman run -d -p 8081:80 -v ./html:/var/www/html php:apache
