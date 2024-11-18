#!/usr/bin/env bash

docker compose down && 
    docker image rm wordpress-really-simple-security-authn-bypass-vulnerable-application-wordpress &&
    docker volume rm wordpress-really-simple-security-authn-bypass-vulnerable-application_wordpress_really_simple_security_db
